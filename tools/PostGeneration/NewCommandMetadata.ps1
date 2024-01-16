﻿# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------

# Set-StrictMode -Version 2

[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $SourcePath = (Join-Path $PSScriptRoot "..\..\src\"),

    [Parameter()]
    [string]
    $OutputPath = (Join-Path $PSScriptRoot "..\..\src\Authentication\Authentication\custom\common\"),

    [Parameter()]
    [switch]
    $IncludePermissions,

    [Parameter()]
    [ValidateSet("v1.0", "beta")]
    $ApiVersion = @("v1.0", "beta")
)
if (!(Test-Path $SourcePath)) {
    Write-Error "SourcePath is not valid or does not exist. Please ensure that $SourcePath exists then try again."
}

if (!(Test-Path $OutputPath)) {
    New-Item -ItemType Directory -Path $OutputPath
}

$MgCommandMetadataFile = Join-Path $OutputPath "MgCommandMetadata.json"
$CommandPathMapping = [ordered]@{}

# Regex patterns.
$OpenApiTagPattern = '\[OpenAPI\].s*(.*)=>(.*):\"(.*)\"'
$ActionFunctionFQNPattern = "\/Microsoft.Graph.(.*)$"
$PermissionsUrl = "https://graphexplorerapi.azurewebsites.net/permissions"

Write-Debug "Crawling cmdlets in $CmdletPathPattern."
$Stopwatch = [system.diagnostics.stopwatch]::StartNew()
$ApiVersion | ForEach-Object {
    $CurrentApiVersion = $_
    $OutputTypePattern = ($CurrentApiVersion -eq "beta") ? '\(typeof\(Microsoft\.Graph\.Beta\.PowerShell\.Models\.(.*)\)\)' : '\(typeof\(Microsoft\.Graph\.PowerShell\.Models\.(.*)\)\)'
    $CmdletPathPattern = Join-Path $SourcePath "\*\$CurrentApiVersion\generated\cmdlets"
    Get-ChildItem -path $CmdletPathPattern -Filter "*.cs" -Recurse | Where-Object { $_.Attributes -ne "Directory" } | ForEach-Object {
        $SplitFileName = $_.BaseName.Split("_")
        $CommandName = (New-Object regex -ArgumentList "Mg").Replace($SplitFileName[0], "-Mg", 1)
        $VariantName = $SplitFileName[1]

        if ($_.DirectoryName -match "\\src\\(.*?.)\\") {
            $ModuleName = ($CurrentApiVersion -eq "beta") ? "Beta.$($Matches.1)" : $Matches.1
        }

        $RawFileContent = (Get-Content -Path $_.FullName -Raw)
        if ($RawFileContent -match $OpenApiTagPattern) {
            $Method = $Matches.2
            $Uri = $Matches.3

            # Remove FQN in paths.
            if ($Uri -match $ActionFunctionFQNPattern) {
                $MatchedUriSegment = $Matches.0
                $SegmentBuilder = ""
                # Trim nested namespace segments.
                $NestedNamespaceSegments = $Matches.1 -split "/"
                foreach($Segment in $NestedNamespaceSegments){
                    # Remove microsoft.graph prefix and trailing '()' from functions.
                    $Segment = $segment.Replace("microsoft.graph.","").Replace("()", "")
                    # Get resource object name from segment if it exists. e.g get 'updateAudience' from windowsUpdates.updateAudience
                    $ResourceObj = $Segment.Split(".")
                    $Segment = $ResourceObj[$ResourceObj.Count-1]       
                    $SegmentBuilder += "/$Segment"
                }
                $Uri = $Uri -replace [Regex]::Escape($MatchedUriSegment), $SegmentBuilder
            }
            $MappingValue = @{
                Command     = $CommandName
                Variants    = [System.Collections.ArrayList]@($VariantName)
                Method      = $Method
                Uri         = $Uri
                ApiVersion  = $CurrentApiVersion
                OutputType  = ($RawFileContent -match $OutputTypePattern) ? $Matches.1 : $null
                Module      = $ModuleName
                Permissions = @()
            }

            # Disambiguate between /users (Get-MgUser) and /users/{id} (Get-MgUser) by variant name (parameterset) i.e., List and Get.
            $CommandMappingKey = ($VariantName.StartsWith("List")) ? "$($MappingValue.Command)_List" : "$($MappingValue.Command)"
            if ($CommandPathMapping.Contains($CommandMappingKey)) {
                $CommandPathMapping[$CommandMappingKey].Variants.AddRange($MappingValue.Variants)
            }
            else {
                if ($IncludePermissions) {
                    try {
                        Write-Debug "Fetching permissions for $CommandMappingKey"
                        $Permissions = @()
                        $PermissionsResponse = Invoke-RestMethod -Uri "$($PermissionsUrl)?requesturl=$($MappingValue.Uri)&method=$($MappingValue.Method)" -ErrorAction SilentlyContinue
                        $PermissionsResponse | ForEach-Object {
                            $Permissions += [PSCustomObject]@{
                                Name            = $_.value
                                Description     = $_.consentDisplayName
                                FullDescription = $_.consentDescription
                                IsAdmin         = $_.IsAdmin
                            }
                        }
                        $MappingValue.Permissions = ($Permissions | Sort-Object -Property Name -Unique)
                    }
                    catch {
                        Write-Warning "Failed to fetch permissions: $($PermissionsUrl)?requesturl=$($MappingValue.Uri)&method=$($MappingValue.Method)"
                    }
                }
                $CommandPathMapping.Add($CommandMappingKey, $MappingValue)
            }
        }
        else {
            Write-Error "No match for $OpenApiTagPattern"
        }
    }
}
if ($CommandPathMapping.Count -eq 0) {
    Write-Warning "Skipped writing metadata to $MgCommandMetadataFile. Metadata is empty."
}
else {
    Write-Debug "Writing metadata to $MgCommandMetadataFile."
    $CommandPathMapping.GetEnumerator() | Sort-Object Name | Select-Object -ExpandProperty Value | ConvertTo-Json -Depth 4 | Out-File -FilePath $MgCommandMetadataFile
}
$stopwatch.Stop()
Write-Debug "Generated command metadata file in '$($Stopwatch.Elapsed.TotalSeconds)`s."