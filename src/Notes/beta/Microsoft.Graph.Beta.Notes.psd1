#
# Module manifest for module 'Microsoft.Graph.Beta.Notes'
#
# Generated by: Microsoft Corporation
#
# Generated on: 8/29/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.Notes.psm1'

# Version number of this module.
ModuleVersion = '2.5.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'dfba33b1-0baf-47e5-9deb-4f381cdd48e7'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Graph PowerShell Cmdlets'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; RequiredVersion = '2.5.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Beta.Notes.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Beta.Notes.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-MgBetaGroupOnenoteNotebook', 
               'Get-MgBetaGroupOnenoteNotebookCount', 
               'Get-MgBetaGroupOnenoteNotebookSection', 
               'Get-MgBetaGroupOnenoteNotebookSectionGroup', 
               'Get-MgBetaGroupOnenoteOperation', 
               'Get-MgBetaGroupOnenoteOperationCount', 
               'Get-MgBetaGroupOnenotePage', 'Get-MgBetaGroupOnenotePageContent', 
               'Get-MgBetaGroupOnenotePageCount', 'Get-MgBetaGroupOnenoteResource', 
               'Get-MgBetaGroupOnenoteResourceContent', 
               'Get-MgBetaGroupOnenoteResourceCount', 
               'Get-MgBetaGroupOnenoteSection', 
               'Get-MgBetaGroupOnenoteSectionCount', 
               'Get-MgBetaGroupOnenoteSectionGroup', 
               'Get-MgBetaGroupOnenoteSectionGroupCount', 
               'Get-MgBetaGroupOnenoteSectionGroupSection', 
               'Get-MgBetaGroupOnenoteSectionPage', 
               'Get-MgBetaSiteOnenoteNotebook', 
               'Get-MgBetaSiteOnenoteNotebookCount', 
               'Get-MgBetaSiteOnenoteNotebookSection', 
               'Get-MgBetaSiteOnenoteNotebookSectionGroup', 
               'Get-MgBetaSiteOnenoteOperation', 
               'Get-MgBetaSiteOnenoteOperationCount', 'Get-MgBetaSiteOnenotePage', 
               'Get-MgBetaSiteOnenotePageContent', 
               'Get-MgBetaSiteOnenotePageCount', 'Get-MgBetaSiteOnenoteResource', 
               'Get-MgBetaSiteOnenoteResourceContent', 
               'Get-MgBetaSiteOnenoteResourceCount', 
               'Get-MgBetaSiteOnenoteSection', 'Get-MgBetaSiteOnenoteSectionCount', 
               'Get-MgBetaSiteOnenoteSectionGroup', 
               'Get-MgBetaSiteOnenoteSectionGroupCount', 
               'Get-MgBetaSiteOnenoteSectionGroupSection', 
               'Get-MgBetaSiteOnenoteSectionPage', 'Get-MgBetaUserOnenoteNotebook', 
               'Get-MgBetaUserOnenoteNotebookCount', 
               'Get-MgBetaUserOnenoteNotebookSection', 
               'Get-MgBetaUserOnenoteNotebookSectionGroup', 
               'Get-MgBetaUserOnenoteOperation', 
               'Get-MgBetaUserOnenoteOperationCount', 'Get-MgBetaUserOnenotePage', 
               'Get-MgBetaUserOnenotePageContent', 
               'Get-MgBetaUserOnenotePageCount', 'Get-MgBetaUserOnenoteResource', 
               'Get-MgBetaUserOnenoteResourceContent', 
               'Get-MgBetaUserOnenoteResourceCount', 
               'Get-MgBetaUserOnenoteSection', 'Get-MgBetaUserOnenoteSectionCount', 
               'Get-MgBetaUserOnenoteSectionGroup', 
               'Get-MgBetaUserOnenoteSectionGroupCount', 
               'Get-MgBetaUserOnenoteSectionGroupSection', 
               'Get-MgBetaUserOnenoteSectionPage', 
               'New-MgBetaGroupOnenoteNotebook', 
               'New-MgBetaGroupOnenoteNotebookSection', 
               'New-MgBetaGroupOnenoteNotebookSectionGroup', 
               'New-MgBetaGroupOnenotePage', 'New-MgBetaGroupOnenoteSection', 
               'New-MgBetaGroupOnenoteSectionGroup', 
               'New-MgBetaGroupOnenoteSectionGroupSection', 
               'New-MgBetaGroupOnenoteSectionPage', 
               'New-MgBetaSiteOnenoteNotebook', 
               'New-MgBetaSiteOnenoteNotebookSection', 
               'New-MgBetaSiteOnenoteNotebookSectionGroup', 
               'New-MgBetaSiteOnenotePage', 'New-MgBetaSiteOnenoteSection', 
               'New-MgBetaSiteOnenoteSectionGroup', 
               'New-MgBetaSiteOnenoteSectionGroupSection', 
               'New-MgBetaSiteOnenoteSectionPage', 'New-MgBetaUserOnenoteNotebook', 
               'New-MgBetaUserOnenoteNotebookSection', 
               'New-MgBetaUserOnenoteNotebookSectionGroup', 
               'New-MgBetaUserOnenotePage', 'New-MgBetaUserOnenoteSection', 
               'New-MgBetaUserOnenoteSectionGroup', 
               'New-MgBetaUserOnenoteSectionGroupSection', 
               'New-MgBetaUserOnenoteSectionPage', 
               'Remove-MgBetaGroupOnenoteNotebook', 
               'Remove-MgBetaGroupOnenotePage', 'Remove-MgBetaGroupOnenoteSection', 
               'Remove-MgBetaGroupOnenoteSectionGroup', 
               'Remove-MgBetaSiteOnenoteNotebook', 'Remove-MgBetaSiteOnenotePage', 
               'Remove-MgBetaSiteOnenoteSection', 
               'Remove-MgBetaSiteOnenoteSectionGroup', 
               'Remove-MgBetaUserOnenoteNotebook', 'Remove-MgBetaUserOnenotePage', 
               'Remove-MgBetaUserOnenoteSection', 
               'Remove-MgBetaUserOnenoteSectionGroup', 
               'Set-MgBetaGroupOnenotePageContent', 
               'Set-MgBetaGroupOnenoteResourceContent', 
               'Set-MgBetaGroupOnenoteSectionPageContent', 
               'Set-MgBetaSiteOnenotePageContent', 
               'Set-MgBetaSiteOnenoteResourceContent', 
               'Set-MgBetaSiteOnenoteSectionPageContent', 
               'Set-MgBetaUserOnenotePageContent', 
               'Set-MgBetaUserOnenoteResourceContent', 
               'Set-MgBetaUserOnenoteSectionPageContent', 
               'Update-MgBetaGroupOnenoteNotebook', 
               'Update-MgBetaGroupOnenotePage', 'Update-MgBetaGroupOnenoteSection', 
               'Update-MgBetaGroupOnenoteSectionGroup', 
               'Update-MgBetaSiteOnenoteNotebook', 'Update-MgBetaSiteOnenotePage', 
               'Update-MgBetaSiteOnenoteSection', 
               'Update-MgBetaSiteOnenoteSectionGroup', 
               'Update-MgBetaUserOnenoteNotebook', 'Update-MgBetaUserOnenotePage', 
               'Update-MgBetaUserOnenoteSection', 
               'Update-MgBetaUserOnenoteSectionGroup'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Microsoft','Office365','Graph','PowerShell','PSModule','PSIncludes_Cmdlet'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/devservicesagreement'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/microsoftgraph/msgraph-sdk-powershell'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/msgraph-sdk-powershell/dev/docs/images/graph_color256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'See https://aka.ms/GraphPowerShell-Release.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIIoLQYJKoZIhvcNAQcCoIIoHjCCKBoCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCqg7Q+JpN/DmHC
# 2Hu6sDWHvIHWylyYxKMcCXV9c37iPKCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
# esGEb+srAAAAAANOMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjMwMzE2MTg0MzI5WhcNMjQwMzE0MTg0MzI5WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDdCKiNI6IBFWuvJUmf6WdOJqZmIwYs5G7AJD5UbcL6tsC+EBPDbr36pFGo1bsU
# p53nRyFYnncoMg8FK0d8jLlw0lgexDDr7gicf2zOBFWqfv/nSLwzJFNP5W03DF/1
# 1oZ12rSFqGlm+O46cRjTDFBpMRCZZGddZlRBjivby0eI1VgTD1TvAdfBYQe82fhm
# WQkYR/lWmAK+vW/1+bO7jHaxXTNCxLIBW07F8PBjUcwFxxyfbe2mHB4h1L4U0Ofa
# +HX/aREQ7SqYZz59sXM2ySOfvYyIjnqSO80NGBaz5DvzIG88J0+BNhOu2jl6Dfcq
# jYQs1H/PMSQIK6E7lXDXSpXzAgMBAAGjggFzMIIBbzAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUnMc7Zn/ukKBsBiWkwdNfsN5pdwAw
# RQYDVR0RBD4wPKQ6MDgxHjAcBgNVBAsTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEW
# MBQGA1UEBRMNMjMwMDEyKzUwMDUxNjAfBgNVHSMEGDAWgBRIbmTlUAXTgqoXNzci
# tW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3JsMGEG
# CCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3J0
# MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIBAD21v9pHoLdBSNlFAjmk
# mx4XxOZAPsVxxXbDyQv1+kGDe9XpgBnT1lXnx7JDpFMKBwAyIwdInmvhK9pGBa31
# TyeL3p7R2s0L8SABPPRJHAEk4NHpBXxHjm4TKjezAbSqqbgsy10Y7KApy+9UrKa2
# kGmsuASsk95PVm5vem7OmTs42vm0BJUU+JPQLg8Y/sdj3TtSfLYYZAaJwTAIgi7d
# hzn5hatLo7Dhz+4T+MrFd+6LUa2U3zr97QwzDthx+RP9/RZnur4inzSQsG5DCVIM
# pA1l2NWEA3KAca0tI2l6hQNYsaKL1kefdfHCrPxEry8onJjyGGv9YKoLv6AOO7Oh
# JEmbQlz/xksYG2N/JSOJ+QqYpGTEuYFYVWain7He6jgb41JbpOGKDdE/b+V2q/gX
# UgFe2gdwTpCDsvh8SMRoq1/BNXcr7iTAU38Vgr83iVtPYmFhZOVM0ULp/kKTVoir
# IpP2KCxT4OekOctt8grYnhJ16QMjmMv5o53hjNFXOxigkQWYzUO+6w50g0FAeFa8
# 5ugCCB6lXEk21FFB1FdIHpjSQf+LP/W2OV/HfhC3uTPgKbRtXo83TZYEudooyZ/A
# Vu08sibZ3MkGOJORLERNwKm2G7oqdOv4Qj8Z0JrGgMzj46NFKAxkLSpE5oHQYP1H
# tPx1lPfD7iNSbJsP6LiUHXH1MIIHejCCBWKgAwIBAgIKYQ6Q0gAAAAAAAzANBgkq
# hkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
# IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEwOTA5WjB+MQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQg
# Q29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIIC
# CgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+laUKq4BjgaBEm6f8MMHt03
# a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc6Whe0t+bU7IKLMOv2akr
# rnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4Ddato88tt8zpcoRb0Rrrg
# OGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+lD3v++MrWhAfTVYoonpy
# 4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nkkDstrjNYxbc+/jLTswM9
# sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6A4aN91/w0FK/jJSHvMAh
# dCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmdX4jiJV3TIUs+UsS1Vz8k
# A/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL5zmhD+kjSbwYuER8ReTB
# w3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zdsGbiwZeBe+3W7UvnSSmn
# Eyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3T8HhhUSJxAlMxdSlQy90
# lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS4NaIjAsCAwEAAaOCAe0w
# ggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRIbmTlUAXTgqoXNzcitW2o
# ynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBDuRQFTuHqp8cx0SOJNDBa
# BgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3JsMF4GCCsG
# AQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3J0MIGfBgNV
# HSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEFBQcCARYzaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1hcnljcHMuaHRtMEAGCCsG
# AQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkAYwB5AF8AcwB0AGEAdABl
# AG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn8oalmOBUeRou09h0ZyKb
# C5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7v0epo/Np22O/IjWll11l
# hJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0bpdS1HXeUOeLpZMlEPXh6
# I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/KmtYSWMfCWluWpiW5IP0
# wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvyCInWH8MyGOLwxS3OW560
# STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBpmLJZiWhub6e3dMNABQam
# ASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJihsMdYzaXht/a8/jyFqGa
# J+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYbBL7fQccOKO7eZS/sl/ah
# XJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbSoqKfenoi+kiVH6v7RyOA
# 9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sLgOppO6/8MO0ETI7f33Vt
# Y5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtXcVZOSEXAQsmbdlsKgEhr
# /Xmfwb1tbWrJUnMTDXpQzTGCGg0wghoJAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIDf4ODmA1seE/4Vgjq/BQHaf
# TipsCYOcFCgeg9BoHO/9MEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEA2JA31CDTj9jdjD9lKv5cKBCDAAU1XbPa08Zltg5NZLoTRX77BrImOcXz
# iYnMiFKd542skhq/cdBUxYgFp+5TLJagfqvcG4rMc2fisbafrdO8pK6lD5VEOEIL
# jz0NgPeRYesC9q2D7w0+vFiPPEgmcjTOgZBm1Cqw6/PY6vZnm75LO4pURGC6C+p2
# YkjvRLAwONxtFclXXxz84CzFuJLAPiYh7gLIyR2X4UzGvTZLRoqCVkW8jD4dxU5/
# CHonkmxEoRWO1Em6cJnx0cRpdjusPDF0mFYQBGa6VwV23p7sjPCgKJ48UEQGwdOm
# YtF0POWawoobMaK7XLRW+78kLXfhF6GCF5cwgheTBgorBgEEAYI3AwMBMYIXgzCC
# F38GCSqGSIb3DQEHAqCCF3AwghdsAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFSBgsq
# hkiG9w0BCRABBKCCAUEEggE9MIIBOQIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCCbQhWvGpqJbPsfJKOoAKArEWht6+5qCjtfmumMDEorJAIGZNTKLknX
# GBMyMDIzMDgyOTE2MzQyMi4wOTFaMASAAgH0oIHRpIHOMIHLMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046N0YwMC0w
# NUUwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wg
# ghHtMIIHIDCCBQigAwIBAgITMwAAAdWpAs/Fp8npWgABAAAB1TANBgkqhkiG9w0B
# AQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMzA1MjUxOTEy
# MzBaFw0yNDAyMDExOTEyMzBaMIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25z
# MScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046N0YwMC0wNUUwLUQ5NDcxJTAjBgNV
# BAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQDFfak57Oph9vuxtloABiLc6enT+yKH619b+OhGdkyh
# gNzkX80KUGI/jEqOVMV4Sqt/UPFFidx2t7v2SETj2tAzuVKtDfq2HBpu80vZ0vyQ
# DydVt4MDL4tJSKqgYofCxDIBrWzJJjgBolKdOJx1ut2TyOc+UOm7e92tVPHpjdg+
# Omf31TLUf/oouyAOJ/Inn2ih3ASP0QYm+AFQjhYDNDu8uzMdwHF5QdwsscNa9PVS
# GedLdDLo9jL6DoPF4NYo06lvvEQuSJ9ImwZfBGLy/8hpE7RD4ewvJKmM1+t6eQuE
# sTXjrGM2WjkW18SgUZ8n+VpL2uk6AhDkCa355I531p0Jkqpoon7dHuLUdZSQO40q
# mVIQ6qQCanvImTqmNgE/rPJ0rgr0hMPI/uR1T/iaL0mEq4bqak+3sa8I+FAYOI/P
# C7V+zEek+sdyWtaX+ndbGlv/RJb5mQaGn8NunbkfvHD1Qt5D0rmtMOekYMq7QjYq
# E3FEP/wAY4TDuJxstjsa2HXi2yUDEg4MJL6/JvsQXToOZ+IxR6KT5t5fB5FpZYBp
# VLMma3pm5z6VXvkXrYs33NXJqVWLwiswa7NUFV87Es2sou9Idw3yAZmHIYWgOQ+D
# IY1nY3aG5DODiwN1rJyEb+mbWDagrdVxcncr6UKKO49eoNTXEW+scUf6GwXG0KEy
# mQIDAQABo4IBSTCCAUUwHQYDVR0OBBYEFK/QXKNO35bBMOz3R5giX7Ala2OaMB8G
# A1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRYMFYwVKBSoFCG
# Tmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29mdCUy
# MFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEFBQcBAQRgMF4w
# XAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2Vy
# dHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwG
# A1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQD
# AgeAMA0GCSqGSIb3DQEBCwUAA4ICAQBmRddqvQuyjRpx0HGxvOqffFrbgFAg0j82
# v0v7R+/8a70S2V4t7yKYKSsQGI6pvt1A8JGmuZyjmIXmw23AkI5bZkxvSgws8rrB
# tJw9vakEckcWFQb7JG6b618x0s9Q3DL0dRq46QZRnm7U6234lecvjstAow30dP0T
# nIacPWKpPc3QgB+WDnglN2fdT1ruQ6WIVBenmpjpG9ypRANKUx5NRcpdJAQW2FqE
# HTS3Ntb+0tCqIkNHJ5aFsF6ehRovWZp0MYIz9bpJHix0VrjdLVMOpe7wv62t90E3
# UrE2KmVwpQ5wsMD6YUscoCsSRQZrA5AbwTOCZJpeG2z3vDo/huvPK8TeTJ2Ltu/I
# tXgxIlIOQp/tbHAiN8Xptw/JmIZg9edQ/FiDaIIwG5YHsfm2u7TwOFyd6OqLw18Z
# 5j/IvDPzlkwWJxk6RHJF5dS4s3fnyLw3DHBe5Dav6KYB4n8x/cEmD/R44/8gS5Pf
# uG1srjLdyyGtyh0KiRDSmjw+fa7i1VPoemidDWNZ7ksNadMad4ZoDvgkqOV4A6a+
# N8HIc/P6g0irrezLWUgbKXSN8iH9RP+WJFx5fBHE4AFxrbAUQ2Zn5jDmHAI3wYcQ
# DnnEYP51A75WFwPsvBrfrb1+6a1fuTEH1AYdOOMy8fX8xKo0E0Ys+7bxIvFPsUpS
# zfFjBolmhzCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZI
# hvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# MjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAy
# MDEwMB4XDTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
# AQDk4aZM57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25Phdg
# M/9cT8dm95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPF
# dvWGUNzBRMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6
# GnszrYBbfowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBp
# Dco2LXCOMcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50Zu
# yjLVwIYwXE8s4mKyzbnijYjklqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3E
# XzTdEonW/aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0
# lBw0gg/wEPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1q
# GFphAXPKZ6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ
# +QuJYfM2BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PA
# PBXbGjfHCBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkw
# EgYJKwYBBAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxG
# NSnPEP8vBO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARV
# MFMwUQYMKwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAK
# BggrBgEFBQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMC
# AYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvX
# zpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20v
# cGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYI
# KwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG
# 9w0BAQsFAAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0x
# M7U518JxNj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmC
# VgADsAW+iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449
# xvNo32X2pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wM
# nosZiefwC2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDS
# PeZKPmY7T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2d
# Y3RILLFORy3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxn
# GSgkujhLmm77IVRrakURR6nxt67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+Crvs
# QWY9af3LwUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokL
# jzbaukz5m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL
# 6Xu/OHBE0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggNQ
# MIICOAIBATCB+aGB0aSBzjCByzELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEn
# MCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOjdGMDAtMDVFMC1EOTQ3MSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQBO
# Ei+S/ZVFe6w1Id31m6Kge26lNKCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBCwUAAgUA6JhTnTAiGA8yMDIzMDgyOTExMjMw
# OVoYDzIwMjMwODMwMTEyMzA5WjB3MD0GCisGAQQBhFkKBAExLzAtMAoCBQDomFOd
# AgEAMAoCAQACAj3lAgH/MAcCAQACAhOTMAoCBQDomaUdAgEAMDYGCisGAQQBhFkK
# BAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJ
# KoZIhvcNAQELBQADggEBAJ30OlBeEj0xQdefWQL1HE1yLLW36/iNFhN8yXzOF2bX
# J1nUzpTECP4FgBwigy9DN9t/xlDmbEmUtG6e9pnUcgoDAx1F5ulb0lm/E1P7/ik1
# 9xFp9QyWwCXkKU6DRG3icGih2N2aZ3IlIaTlEdntPQ0IKZVEhkNBnVcdySUXh/xd
# 13KuHkc2WJ4b63/r+2+miFnE0YiE2dgkvMRgbiVEwDpuf9+B/a/4S8Biip32Uwc/
# Z4e1LMWVx5RbNDrbA8nFsm0R5y5nkZovQuEbgpEnvV4LdJqtOWaVGZl6/MfK0wAS
# BmtWCcG31oNSQrW4mKTUvU/AWsITABak4DNliTj7/wcxggQNMIIECQIBATCBkzB8
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1N
# aWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAdWpAs/Fp8npWgABAAAB
# 1TANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEE
# MC8GCSqGSIb3DQEJBDEiBCCPFEecVZ9FjvoP/lhPjemHkAkMannWGjHTs4UyUrp9
# JDCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EINm/I4YM166JMM7EKIcYvlcb
# r2CHjKC0LUOmpZIbBsH/MIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENB
# IDIwMTACEzMAAAHVqQLPxafJ6VoAAQAAAdUwIgQg34M7tDsYv2bu2a78rh4vGsQR
# 0cCe63mJ3DY9byH81sYwDQYJKoZIhvcNAQELBQAEggIATOtkx3/C0TbKYvhD2hQA
# dioVB7n0XsYTo7fTEtYT4d5H3N+L48tGr1UhH8LwcXE3v9naZmYscoA91zWeVCky
# kbn+78w9cwUNVqER8D8pofcq/4orRklpEmqlwSCRTThoDbzGfKyNJwt0O/imBGwD
# AsYRhkUFGUtmS/N4iAJHsENgvjGSyi7aVqDtOU0FmjOKtho3215GLNSSdCGKwuLA
# lEsZZlIvj0IfjJ268W9KEY+Oqj62dwZ2/cPZxweIKY8E5gEwvkdtmEBDvQkuIOKl
# OwJpAWRYuruOEh2o9VQEkN/DL/X08ggMIyYDqswl0Jkx+GbdCcagCz3cnf47Kqcl
# lzKriUgCstZEB+lXnO+P3rCHmc3JPO0rnuEmMBiqnbPO6wJHfq7shzN8N4GXdXnC
# nZFCQIntnN4dCnjEsw2vWQAN1/8Amqi0tj/mCzkD5FP/TWtxGasggS/5iofRksRx
# fkjKPLYfEXwYrhCo4u5NCKiaF/tfnaExcq7M/VMdNqLzONZfA+1BiPdUyW701PgO
# KU0ZXBivNLC1QazrO+8DA1S+17jJvV+tCAEXtCMbZaywLpA9P81XmU3DIcxrOyno
# HnD4imitMdSpO8qF1nvGFG50NV6ytNsr9neCdL1/WirpKSw9hqk9gYKvKbtAMdK+
# H5CYc46SnlcqXrxlMTKAne0=
# SIG # End signature block
