﻿param(
  [switch]$Isolated,
  [switch]$Pack,
  [switch]$Release
)

$ErrorActionPreference = 'Stop'
$ModuleName = "Authentication"
$ModulePrefix = "Microsoft.Graph"
$netStandard = "netstandard2.0"
$netApp = "net6.0"
$netFx = "net472"
$copyExtensions = @('.dll', '.pdb')

# Source code locations
$coreSrc = Join-Path $PSScriptRoot "../$ModuleName.Core"
$cmdletsSrc = Join-Path $PSScriptRoot "../$ModuleName"

# Generated output locations
$outDir = Join-Path $PSScriptRoot "artifacts"
$outDeps = Join-Path $outDir "Dependencies"
$outCore = Join-Path $outDeps "Core"
$outDesktop = Join-Path $outDeps "Desktop"

if ($PSEdition -ne 'Core') {
  Write-Error 'This script requires PowerShell Core to execute. [Note] Generated cmdlets will work in both PowerShell Core or Windows PowerShell.'
}

$Configuration = 'Debug'
if ($Release) {
  $Configuration = 'Release'
}

if (-not $Isolated) {
  Write-Host -ForegroundColor Green 'Creating isolated process...'
  $pwsh = [System.Diagnostics.Process]::GetCurrentProcess().Path
  & "$pwsh" -NonInteractive -NoLogo -NoProfile -File $MyInvocation.MyCommand.Path @PSBoundParameters -Isolated

  if ($LastExitCode -ne 0) {
    # Build failed. Don't attempt to run the module.
    return
  }

  if ($Pack) {
    . (Join-Path $PSScriptRoot 'pack-module.ps1')
    if ($LastExitCode -ne 0) {
      # Packing failed. Don't attempt to run the module.
      return
    }
  }
  return
}

# Clean build folders.
Write-Host -ForegroundColor Green 'Cleaning build folders...'
$null = Remove-Item -Path "$coreSrc/bin", "$coreSrc/obj" -Recurse -ErrorAction Ignore
$null = Remove-Item -Path "$cmdletsSrc/bin", "$cmdletsSrc/obj" -Recurse -ErrorAction Ignore

if ((Test-Path "$cmdletsSrc/bin") -or (Test-Path "$cmdletsSrc/obj")) {
  Write-Host -ForegroundColor Cyan 'Did you forget to exit your isolated module session before rebuilding?'
  Write-Error 'Unable to clean ''bin'' or ''obj'' folder. A process may have an open handle.'
}

Write-Host -ForegroundColor Green 'Compiling module...'
# Build authentication.core for each framework.
Push-Location $coreSrc
dotnet publish -c $Configuration -f $netStandard --verbosity quiet /nologo
dotnet publish -c $Configuration -f $netApp --verbosity quiet /nologo
dotnet publish -c $Configuration -f $netFx --verbosity quiet /nologo
Pop-Location

# Build authentication.
Push-Location $cmdletsSrc
dotnet publish -c $Configuration --verbosity quiet /nologo
Pop-Location

if ($LastExitCode -ne 0) {
  Write-Error 'Compilation failed.'
}

# Ensure out directory exists and is clean.
if (Test-Path $outDir) {
  Remove-Item -Path $outDir -Recurse -Force
}
New-Item -Path $outDir -ItemType Directory | out-null
New-Item -Path $outDeps -ItemType Directory | out-null
New-Item -Path $outCore -ItemType Directory | out-null
New-Item -Path $outDesktop -ItemType Directory | out-null

#Process markdown xml help
Write-Host -ForegroundColor Green 'Generate doc files ...'
$GenerateDocFilesS1 = (Join-Path $PSScriptRoot "generate-doc-files.ps1")
& $GenerateDocFilesS1

Write-Host -ForegroundColor Green 'Importing examples ...'
$ImportExamplesAndDescriptionsPS1 = (Join-Path $PSScriptRoot "import-examples.ps1")
& $ImportExamplesAndDescriptionsPS1

Write-Host -ForegroundColor Green 'Importing synopsis and descriptions ...'
$ImportSynopsisAndDescriptionsPS1 = (Join-Path $PSScriptRoot "import-synopsis-and-descriptions.ps1")
& $ImportSynopsisAndDescriptionsPS1

Write-Host -ForegroundColor Green 'Updating markdown files ...'
$UpdateMarkDownPS1 = (Join-Path $PSScriptRoot "update-markdown.ps1")
& $UpdateMarkDownPS1

Write-Host -ForegroundColor Green 'Creating new xml based help file ...'
$DocsPath = (Join-Path $PSScriptRoot "../docs/")
New-ExternalHelp -Path $DocsPath -OutputPath $PSScriptRoot -Force

# Copy manifest.
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.format.ps1xml" -Destination $outDir
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.psm1" -Destination $outDir
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.psd1" -Destination $outDir
Copy-Item -Path "$cmdletsSrc/StartupScripts" -Filter *.ps1 -Recurse -Destination $outDir

#Copy markdown xml help
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName.dll-Help.xml" -Recurse -Destination $outDir
Copy-Item -Path "$cmdletsSrc/$ModulePrefix.$ModuleName-Help.xml" -Recurse -Destination $outDir
# Copy custom commands.
Copy-Item -Path "$cmdletsSrc/custom" -Recurse -Destination $outDir

# Core assemblies to include with cmdlets (Let PowerShell load them).
$CoreAssemblies = @('Microsoft.Graph.Authentication.Core')

# Copy each authentication.core asset to out directory and remember it.
$Deps = [System.Collections.Generic.HashSet[string]]::new()
Get-ChildItem -Path "$coreSrc/bin/$Configuration/$netStandard/publish/" |
Where-Object { $_.Extension -in $copyExtensions } |
Where-Object { -not $CoreAssemblies.Contains($_.BaseName) } |
ForEach-Object { [void]$Deps.Add($_.Name); Copy-Item -Path $_.FullName -Destination $outDeps -Recurse }

Get-ChildItem -Path "$coreSrc/bin/$Configuration/$netApp/publish/" |
Where-Object { -not $CoreAssemblies.Contains($_.BaseName) } |
ForEach-Object { [void]$Deps.Add($_.Name); Copy-Item -Path $_.FullName -Destination $outCore -Recurse }

Get-ChildItem -Path "$coreSrc/bin/$Configuration/$netFx/publish/" |
Where-Object { -not $CoreAssemblies.Contains($_.BaseName) } |
ForEach-Object { [void]$Deps.Add($_.Name); Copy-Item -Path $_.FullName -Destination $outDesktop -Recurse }

# Now copy each authentication asset, not taking any found in authentication.core.
Get-ChildItem -Path "$cmdletsSrc/bin/$Configuration/$netStandard/publish/" |
Where-Object { -not $Deps.Contains($_.Name) -and $_.Extension -in $copyExtensions } |
ForEach-Object { Copy-Item -Path $_.FullName -Destination $outDir -Recurse }

# Update module manifest with nested assemblies.
$RequiredAssemblies = @(
  'Microsoft.Graph.Authentication.dll', 
  'Microsoft.Graph.Authentication.Core.dll'
)
Update-ModuleManifest -Path (Join-Path $outDir "$ModulePrefix.$ModuleName.psd1") -NestedModules $RequiredAssemblies

Write-Host -ForegroundColor Green '-------------Done-------------'

# SIG # Begin signature block
# MIIoPAYJKoZIhvcNAQcCoIIoLTCCKCkCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAjmt9egVCqAM5s
# U8glzf0NB2wtQjGwArkoBzzW9pUQeqCCDYUwggYDMIID66ADAgECAhMzAAADri01
# UchTj1UdAAAAAAOuMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjMxMTE2MTkwODU5WhcNMjQxMTE0MTkwODU5WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQD0IPymNjfDEKg+YyE6SjDvJwKW1+pieqTjAY0CnOHZ1Nj5irGjNZPMlQ4HfxXG
# yAVCZcEWE4x2sZgam872R1s0+TAelOtbqFmoW4suJHAYoTHhkznNVKpscm5fZ899
# QnReZv5WtWwbD8HAFXbPPStW2JKCqPcZ54Y6wbuWV9bKtKPImqbkMcTejTgEAj82
# 6GQc6/Th66Koka8cUIvz59e/IP04DGrh9wkq2jIFvQ8EDegw1B4KyJTIs76+hmpV
# M5SwBZjRs3liOQrierkNVo11WuujB3kBf2CbPoP9MlOyyezqkMIbTRj4OHeKlamd
# WaSFhwHLJRIQpfc8sLwOSIBBAgMBAAGjggGCMIIBfjAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUhx/vdKmXhwc4WiWXbsf0I53h8T8w
# VAYDVR0RBE0wS6RJMEcxLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJh
# dGlvbnMgTGltaXRlZDEWMBQGA1UEBRMNMjMwMDEyKzUwMTgzNjAfBgNVHSMEGDAW
# gBRIbmTlUAXTgqoXNzcitW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIw
# MTEtMDctMDguY3JsMGEGCCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDEx
# XzIwMTEtMDctMDguY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIB
# AGrJYDUS7s8o0yNprGXRXuAnRcHKxSjFmW4wclcUTYsQZkhnbMwthWM6cAYb/h2W
# 5GNKtlmj/y/CThe3y/o0EH2h+jwfU/9eJ0fK1ZO/2WD0xi777qU+a7l8KjMPdwjY
# 0tk9bYEGEZfYPRHy1AGPQVuZlG4i5ymJDsMrcIcqV8pxzsw/yk/O4y/nlOjHz4oV
# APU0br5t9tgD8E08GSDi3I6H57Ftod9w26h0MlQiOr10Xqhr5iPLS7SlQwj8HW37
# ybqsmjQpKhmWul6xiXSNGGm36GarHy4Q1egYlxhlUnk3ZKSr3QtWIo1GGL03hT57
# xzjL25fKiZQX/q+II8nuG5M0Qmjvl6Egltr4hZ3e3FQRzRHfLoNPq3ELpxbWdH8t
# Nuj0j/x9Crnfwbki8n57mJKI5JVWRWTSLmbTcDDLkTZlJLg9V1BIJwXGY3i2kR9i
# 5HsADL8YlW0gMWVSlKB1eiSlK6LmFi0rVH16dde+j5T/EaQtFz6qngN7d1lvO7uk
# 6rtX+MLKG4LDRsQgBTi6sIYiKntMjoYFHMPvI/OMUip5ljtLitVbkFGfagSqmbxK
# 7rJMhC8wiTzHanBg1Rrbff1niBbnFbbV4UDmYumjs1FIpFCazk6AADXxoKCo5TsO
# zSHqr9gHgGYQC2hMyX9MGLIpowYCURx3L7kUiGbOiMwaMIIHejCCBWKgAwIBAgIK
# YQ6Q0gAAAAAAAzANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEw
# OTA5WjB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYD
# VQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG
# 9w0BAQEFAAOCAg8AMIICCgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+la
# UKq4BjgaBEm6f8MMHt03a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc
# 6Whe0t+bU7IKLMOv2akrrnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4D
# dato88tt8zpcoRb0RrrgOGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+
# lD3v++MrWhAfTVYoonpy4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nk
# kDstrjNYxbc+/jLTswM9sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6
# A4aN91/w0FK/jJSHvMAhdCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmd
# X4jiJV3TIUs+UsS1Vz8kA/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL
# 5zmhD+kjSbwYuER8ReTBw3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zd
# sGbiwZeBe+3W7UvnSSmnEyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3
# T8HhhUSJxAlMxdSlQy90lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS
# 4NaIjAsCAwEAAaOCAe0wggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRI
# bmTlUAXTgqoXNzcitW2oynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAL
# BgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBD
# uRQFTuHqp8cx0SOJNDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jv
# c29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3JsMF4GCCsGAQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3J0MIGfBgNVHSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEF
# BQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1h
# cnljcHMuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkA
# YwB5AF8AcwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn
# 8oalmOBUeRou09h0ZyKbC5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7
# v0epo/Np22O/IjWll11lhJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0b
# pdS1HXeUOeLpZMlEPXh6I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/
# KmtYSWMfCWluWpiW5IP0wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvy
# CInWH8MyGOLwxS3OW560STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBp
# mLJZiWhub6e3dMNABQamASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJi
# hsMdYzaXht/a8/jyFqGaJ+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYb
# BL7fQccOKO7eZS/sl/ahXJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbS
# oqKfenoi+kiVH6v7RyOA9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sL
# gOppO6/8MO0ETI7f33VtY5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtX
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGg0wghoJAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAAOuLTVRyFOPVR0AAAAA
# A64wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIKCL
# qjH/DcptjJ86QBfBGREVWymdnbGnCnvb2Rj1H9roMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAAdk4sjKR5isn4cUomYgFS6u2mGWo69+ua07Z
# yeuvbsnQjG7ZTADcH35UoYwBCAJUF3ax8ZO2CtSbbPEf+cQausOd/QXNvU/b6b9E
# 5LozCqFfI9o45iNnRTDaxSSYZ8yzhtnM9tSuetJHSgXilU4FMmjDPOzfRsuzRJMB
# jmI4yY9Uq5TillDr4JrrC0zFygc4lE26SBF3FOOxyyZu87mo7Y/Yqyy/AT+M/XpS
# JMZZQcgYzbLxDYJB+Ho0o0KpypsDEXLCXBPr+yqnZ+xoGXAT7YlaQGuykFUejZ+u
# UIvHIc9qJzsjPkDqB+ftWmUFOICCT40uJ7BT0EBOfDcLtXv7zKGCF5cwgheTBgor
# BgEEAYI3AwMBMYIXgzCCF38GCSqGSIb3DQEHAqCCF3AwghdsAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFSBgsqhkiG9w0BCRABBKCCAUEEggE9MIIBOQIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCC5z/T3MGaUVliToW+iwOBg7euMA+Hl0yZm
# 0TGicPg+8wIGZfL3OzxSGBMyMDI0MDQxMTA4MDk0Ni4xMTZaMASAAgH0oIHRpIHO
# MIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxk
# IFRTUyBFU046OEQwMC0wNUUwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFNlcnZpY2WgghHtMIIHIDCCBQigAwIBAgITMwAAAfPFCkOuA8wdMQAB
# AAAB8zANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAx
# MDAeFw0yMzEyMDYxODQ2MDJaFw0yNTAzMDUxODQ2MDJaMIHLMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046OEQwMC0w
# NUUwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Uw
# ggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQD+n6ba4SuB9iSO5WMhbngq
# YAb+z3IfzNpZIWS/sgfXhlLYmGnsUtrGX3OVcg+8krJdixuNUMO7ZAOqCZsXUjOz
# 8zcn1aUD5D2r2PhzVKjHtivWGgGj4x5wqWe1Qov3vMz8WHsKsfadIlWjfBMnVKVo
# mOybQ7+2jc4afzj2XJQQSmE9jQRoBogDwmqZakeYnIx0EmOuucPr674T6/YaTPiI
# YlGf+XV2u6oQHAkMG56xYPQikitQjjNWHADfBqbBEaqppastxpRNc4id2S1xVQxc
# QGXjnAgeeVbbPbAoELhbw+z3VetRwuEFJRzT6hbWEgvz9LMYPSbioHL8w+ZiWo3x
# uw3R7fJsqe7pqsnjwvniP7sfE1utfi7k0NQZMpviOs//239H6eA6IOVtF8w66ipE
# 71EYrcSNrOGlTm5uqq+syO1udZOeKM0xY728NcGDFqnjuFPbEEm6+etZKftU9jxL
# CSzqXOVOzdqA8O5Xa3E41j3s7MlTF4Q7BYrQmbpxqhTvfuIlYwI2AzeO3OivcezJ
# wBj2FQgTiVHacvMQDgSA7E5vytak0+MLBm0AcW4IPer8A4gOGD9oSprmyAu1J6wF
# kBrf2Sjn+ieNq6Fx0tWj8Ipg3uQvcug37jSadF6q1rUEaoPIajZCGVk+o5wn6rt+
# cwdJ39REU43aWCwn0C+XxwIDAQABo4IBSTCCAUUwHQYDVR0OBBYEFMNkFfalEVEM
# jA3ApoUx9qDrDQokMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8G
# A1UdHwRYMFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMv
# Y3JsL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBs
# BggrBgEFBQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0
# LmNvbS9wa2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUy
# MDIwMTAoMSkuY3J0MAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUH
# AwgwDgYDVR0PAQH/BAQDAgeAMA0GCSqGSIb3DQEBCwUAA4ICAQDfxByP/NH+79vc
# 3liO4c7nXM/UKFcAm5w61FxRxPxCXRXliNjZ7sDqNP0DzUTBU9tS5DqkqRSiIV15
# j7q8e6elg8/cD3bv0sW4Go9AML4lhA5MBg3wzKdihfJ0E/HIqcHX11mwtbpTiC2s
# gAUh7+OZnb9TwJE7pbEBPJQUxxuCiS5/r0s2QVipBmi/8MEW2eIi4mJ+vHI5DCaA
# GooT4A15/7oNj9zyzRABTUICNNrS19KfryEN5dh5kqOG4Qgca9w6L7CL+SuuTZi0
# SZ8Zq65iK2hQ8IMAOVxewCpD4lZL6NDsVNSwBNXOUlsxOAO3G0wNT+cBug/HD43B
# 7E2odVfs6H2EYCZxUS1rgReGd2uqQxgQ2wrMuTb5ykO+qd+4nhaf/9SN3getomtQ
# n5IzhfCkraT1KnZF8TI3ye1Z3pner0Cn/p15H7wNwDkBAiZ+2iz9NUEeYLfMGm9v
# ErDVBDRMjGsE/HqqY7QTSTtDvU7+zZwRPGjiYYUFXT+VgkfdHiFpKw42Xsm0MfL5
# aOa31FyCM17/pPTIKTRiKsDF370SwIwZAjVziD/9QhEFBu9pojFULOZvzuL5iSEJ
# IcqopVAwdbNdroZi2HN8nfDjzJa8CMTkQeSfQsQpKr83OhBmE3MF2sz8gqe3loc0
# 5DW8JNvZ328Jps3LJCALt0rQPJYnOzCCB3EwggVZoAMCAQICEzMAAAAVxedrngKb
# SZkAAAAAABUwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmlj
# YXRlIEF1dGhvcml0eSAyMDEwMB4XDTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIy
# NVowfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UE
# AxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQDk4aZM57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXI
# yjVX9gF/bErg4r25PhdgM/9cT8dm95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjo
# YH1qUoNEt6aORmsHFPPFdvWGUNzBRMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1y
# aa8dq6z2Nr41JmTamDu6GnszrYBbfowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v
# 3byNpOORj7I5LFGc6XBpDco2LXCOMcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pG
# ve2krnopN6zL64NF50ZuyjLVwIYwXE8s4mKyzbnijYjklqwBSru+cakXW2dg3viS
# kR4dPf0gz3N9QZpGdc3EXzTdEonW/aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYr
# bqgSUei/BQOj0XOmTTd0lBw0gg/wEPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlM
# jgK8QmguEOqEUUbi0b1qGFphAXPKZ6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSL
# W6CmgyFdXzB0kZSU2LlQ+QuJYfM2BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AF
# emzFER1y7435UsSFF5PAPBXbGjfHCBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIu
# rQIDAQABo4IB3TCCAdkwEgYJKwYBBAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIE
# FgQUKqdS/mTEmr6CkTxGNSnPEP8vBO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWn
# G1M1GelyMFwGA1UdIARVMFMwUQYMKwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEW
# M2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5
# Lmh0bTATBgNVHSUEDDAKBggrBgEFBQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
# AEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV
# 9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3Js
# Lm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAx
# MC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2
# LTIzLmNydDANBgkqhkiG9w0BAQsFAAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv
# 6lwUtj5OR2R4sQaTlz0xM7U518JxNj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZn
# OlNN3Zi6th542DYunKmCVgADsAW+iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1
# bSNU5HhTdSRXud2f8449xvNo32X2pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4
# rPf5KYnDvBewVIVCs/wMnosZiefwC2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU
# 6ZGyqVvfSaN0DLzskYDSPeZKPmY7T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDF
# NLB62FD+CljdQDzHVG2dY3RILLFORy3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/
# HltEAY5aGZFrDZ+kKNxnGSgkujhLmm77IVRrakURR6nxt67I6IleT53S0Ex2tVdU
# CbFpAUR+fKFhbHP+CrvsQWY9af3LwUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKi
# excdFYmNcP7ntdAoGokLjzbaukz5m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTm
# dHRbatGePu1+oDEzfbzL6Xu/OHBE0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZq
# ELQdVTNYs6FwZvKhggNQMIICOAIBATCB+aGB0aSBzjCByzELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJp
# Y2EgT3BlcmF0aW9uczEnMCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOjhEMDAtMDVF
# MC1EOTQ3MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMK
# AQEwBwYFKw4DAhoDFQBu+gYs2LRha5pFO79g3LkfwKRnKKCBgzCBgKR+MHwxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqGSIb3DQEBCwUAAgUA6cG0uDAi
# GA8yMDI0MDQxMTAxMDA0MFoYDzIwMjQwNDEyMDEwMDQwWjB3MD0GCisGAQQBhFkK
# BAExLzAtMAoCBQDpwbS4AgEAMAoCAQACAhYbAgH/MAcCAQACAhPNMAoCBQDpwwY4
# AgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSCh
# CjAIAgEAAgMBhqAwDQYJKoZIhvcNAQELBQADggEBAASwRSDZuxsozV4TWLhHlWxw
# X9xeEs/yNydyYmBXJsOuUW60AJeWOSDJOx4P+qeNd7mCn7UNbs+nBnrRL2yiPdfO
# zMlwMY3EhCoS0xxSSsOJjdYeJm1fDEn6lll9F/8qA6sRH3CUre0QFZdhz2B250qj
# TYeo/6dFCM5JU6jmue4fKHcfGV8T4q+IsK9QCTIHSKVl7nv1co5tlxwRkaRkMTsb
# IxEhYJf5TBQt6g08Q9NYQYwQCkCVYjHjqvj4ctn5GAbOEliAwyWdrIgrWr0I38zY
# U9qaSldrUcRXVZP4BL4/blC6E9UWKVSjEX6FqdZEjYtqOBS+evpu/bbJKqtDCjEx
# ggQNMIIECQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAA
# AfPFCkOuA8wdMQABAAAB8zANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkD
# MQ0GCyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCDKXa1GbMSc/YWuycNPHMSq
# 6gX1aCjDIUaho0NwWssPRjCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIBi8
# 2TSLtuG4Vkp8wBmJk/T+RAh841sG/aDOwxg6O2LoMIGYMIGApH4wfDELMAkGA1UE
# BhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAc
# BgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAHzxQpDrgPMHTEAAQAAAfMwIgQgKpDq
# 5hZZynflIwK4ww1Rs2cl72NALd9GhH/dGpAFGLEwDQYJKoZIhvcNAQELBQAEggIA
# KZaZWIux3D5ks8kh+xRmHCk3tIIDsbGW4eRQQQzpHMKTy1lKGwtKq6es4/a3025U
# nP/xqEziLLaRLC7INvr7AnWjToe95j4d3OQ9Iz0bqBzLJTpy9h995Qwn7g+OdZrW
# o6BLhnocJTpoeVQ3MKJMGr+kndNGfYZvDhzP3+3VGHOUvejZ4SPBVvZ2nkVg5eOb
# IUbsBMPQwgRJ92b/ko9yxyEe8r7YJ7WhrCvgekliNRzskaxb2ZxTlyemCmfVu11a
# tgV2yuftZqMxdrNkcbK464U3NONaoMx7VqdMio8EVU8hQAi8DaiTowSDHFTtnAOj
# 3f5QOaSmZ+Z6OkK2b2JdXhjZTXLOtDituNSwApMaUb/ZsTTLUUXtrGTP2gCU2dfH
# QywoWeoDDQf/4Dw2cTjQkBisnGWNIu1ugRxeouCvATIJrNDveiXCPPcALnZJa9VZ
# fPXYc6jIhqoIQvbxINrpzU5JCvGUxmXtgyKLxG8paxaOsbcA3bNCnze1oRoTOz80
# 3nXZ4UpGWsvkKjKX6KJrm6RpXah0/xxBDLme1MiuAN9MXubTW/T5uv8HPchc47M9
# VNaEL5ZNDyNl7FDsMqPFZFP926h5VmmREuIUJGG5scdAokoKjpI5Ihy62IR9p5pa
# +U9EWygKha9nywVgAnb3ZKBT4svsBaJ3s880iId9cuw=
# SIG # End signature block
