# ------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
# ------------------------------------------------------------------------------

BeforeAll {
    $ModuleName = "Microsoft.Graph.Authentication"
    $ModulePath = Join-Path $PSScriptRoot "..\artifacts\$ModuleName.psd1"
    Import-Module $ModulePath -Force
    $RandomClientId = (New-Guid).Guid
    
    $AvailableAzModule = Get-Module Az.Accounts -ListAvailable
    if ($AvailableAzModule.Count -lt 1) {
        Install-Module Az.Accounts -Repository PSGallery -Scope CurrentUser -Force -AllowClobber
    }
}
Describe 'Connect-MgGraph ParameterSets' {
    BeforeAll {
        $ConnectMgGraphCommand = Get-Command Connect-MgGraph
    }
    it 'Should have three ParameterSets' {
        $ConnectMgGraphCommand | Should -Not -BeNullOrEmpty
        $ConnectMgGraphCommand.ParameterSets | Should -HaveCount 6
    }
    It 'Should have UserParameterSet' {
        $UserParameterSet = $ConnectMgGraphCommand.ParameterSets | Where-Object Name -eq 'UserParameterSet'
        $UserParameterSet | Should -Not -BeNull
        $UserParameterSet.IsDefault | Should -BeTrue
        $UserParameterSet.Parameters | Where-Object IsMandatory | Should -HaveCount 0
        @('ClientId', 'TenantId', 'ContextScope', 'Environment', 'ClientTimeout') | Should -BeIn $UserParameterSet.Parameters.Name
    }

    It 'Should have AppCertificateParameterSet' {
        $AppCertificateParameterSet = $ConnectMgGraphCommand.ParameterSets | Where-Object Name -eq 'AppCertificateParameterSet'
        $AppCertificateParameterSet | Should -Not -BeNull
        @('ClientId', 'TenantId', 'CertificateSubjectName', 'CertificateThumbprint', 'ContextScope', 'Environment', 'ClientTimeout') | Should -BeIn $AppCertificateParameterSet.Parameters.Name
        $MandatoryParameters = $AppCertificateParameterSet.Parameters | Where-Object IsMandatory
        $MandatoryParameters | Should -HaveCount 1
        $MandatoryParameters.Name | Should -Be 'ClientId'
    }

    It 'Should have AppSecretCredentialParameterSet' {
        $AppSecretCredentialParameterSet = $ConnectMgGraphCommand.ParameterSets | Where-Object Name -eq 'AppSecretCredentialParameterSet'
        $AppSecretCredentialParameterSet | Should -Not -BeNull
        @('ClientSecretCredential', 'TenantId', 'ContextScope', 'Environment', 'ClientTimeout') | Should -BeIn $AppSecretCredentialParameterSet.Parameters.Name
        $MandatoryParameters = $AppSecretCredentialParameterSet.Parameters | Where-Object IsMandatory
        $MandatoryParameters | Should -HaveCount 0
    }

    It 'Should have EnvironmentVariableParameterSet' {
        $EnvironmentVariableParameterSet = $ConnectMgGraphCommand.ParameterSets | Where-Object Name -eq 'EnvironmentVariableParameterSet'
        $EnvironmentVariableParameterSet | Should -Not -BeNull
        @('EnvironmentVariable', 'ContextScope', 'Environment', 'ClientTimeout') | Should -BeIn $EnvironmentVariableParameterSet.Parameters.Name
        $MandatoryParameters = $EnvironmentVariableParameterSet.Parameters | Where-Object IsMandatory
        $MandatoryParameters | Should -HaveCount 0
    }

    It 'Should Have AccessTokenParameterSet' {
        $AccessTokenParameterSet = $ConnectMgGraphCommand.ParameterSets | Where-Object Name -eq 'AccessTokenParameterSet'
        $AccessTokenParameterSet | Should -Not -BeNull
        @('AccessToken', 'Environment', 'ClientTimeout') | Should -BeIn $AccessTokenParameterSet.Parameters.Name
        $MandatoryParameters = $AccessTokenParameterSet.Parameters | Where-Object IsMandatory
        $MandatoryParameters | Should -HaveCount 1
        $MandatoryParameters.Name | Should -Be 'AccessToken'
    }
}

Describe 'Connect-MgGraph In Delegated Mode' {
    # We'll skip this test until https://github.com/Azure/azure-sdk-for-net/issues/28036 is fixed.
    It 'Should throw exception when invalid tenantId is specified' -skip {
        { Connect-MgGraph -TenantId "thisdomaindoesnotexist.com" -ErrorAction Stop -UseDeviceAuthentication } | Should -Throw -ExpectedMessage "*AADSTS90002*Tenant 'thisdomaindoesnotexist.com' not found*"
    }
}

Describe 'Connect-MgGraph In Environment Variable Mode' {
    It 'Should throw exception when supported environment variables are not specified' {
        { Connect-MgGraph -EnvironmentVariable -ErrorAction Stop } | Should -Throw -ExpectedMessage "*EnvironmentCredential authentication unavailable. Environment variables are not fully configured*"
    }
    It 'Should attempt to use configured environment variables' {
        {
            $Env:AZURE_CLIENT_ID = "Not_Valid"
            $Env:AZURE_CLIENT_SECRET = "Not_Valid"
            $Env:AZURE_TENANT_ID = "common"
            Connect-MgGraph -EnvironmentVariable -ErrorAction Stop
        } | Should -Throw -ExpectedMessage "*ClientSecretCredential authentication failed: AADSTS700016: Application with identifier 'Not_Valid' was not found in the directory 'Microsoft'.*"
    }
}

Describe 'Connect-MgGraph In App Mode' {
    It 'Should throw exception when certificate thumbprint length is > 40' {
        { Connect-MgGraph -ClientId $RandomClientId -CertificateThumbprint '12345678901234567890123456789012345678901' -ErrorAction Stop } | Should -Throw -ExpectedMessage "*'CertificateThumbprint' must have a length of 40.*"
    }

    It 'Should throw exception when certificate thumbprint length is < 40' {
        { Connect-MgGraph -ClientId $RandomClientId -CertificateThumbprint '123456789012345678901234567890123456789' -ErrorAction Stop } | Should -Throw -ExpectedMessage "*'CertificateThumbprint' must have a length of 40.*"
    }

}

Describe 'Connect-MgGraph Dependency Resolution' {
    It 'Should load Mg module side by side with Az module.' {
        { Connect-AzAccount -ApplicationId $RandomClientId -CertificateThumbprint "Invalid" -Tenant "Invalid" -ErrorAction Stop } | Should -Throw -ExpectedMessage "*Could not find tenant id*"
        { Connect-MgGraph -TenantId "thisdomaindoesnotexist.com" -ErrorAction Stop -UseDeviceAuthentication } | Should -Throw -ExpectedMessage "*AADSTS90002*"
    }
}

Describe 'Connect-MgGraph Logging' {
    It 'Should write MSAL logs to debug stream.' {
        $MgDebugStream = $(Connect-MgGraph -TenantId "thisdomaindoesnotexist.com" -UseDeviceAuthentication -Debug -ErrorAction SilentlyContinue) 5>&1
        $MgDebugStream[0] | Should -Match "DeviceCodeCredential.Authenticate invoked. Scopes: \[ User.Read \]"
    }
}
# SIG # Begin signature block
# MIInvwYJKoZIhvcNAQcCoIInsDCCJ6wCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAAu5l9eG5ufPpb
# NazyMMCzbKhZcmS398lLvDuIAty00KCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# /Xmfwb1tbWrJUnMTDXpQzTGCGZ8wghmbAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEINr1Obq01h2YnNDcr+diQ/t8
# rnOy6fVwIHEqB5hYgjl1MEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAiEghpg9ELwo2E5LQk8Ekw70Q/LjXWqmKlnLypiNGvkcqBrulyq/JgEb0
# HfWZPnj2LWxVGLl3q7uG6CId+e+oFEMDCgYjNqdWI3j/nhqM1wWOtsuYFmEc7FKt
# v87sP4UePvD6SM9Ao735g73gFsRBu3BzAXKzBgNAv3WiiYV7er2EiFc4Mebbyfx2
# yoo2kIACKhnq08TwvGqcksRwc2QAJAzG9pQEQREFulICogjmU+66Hvdbtx2TX5Tq
# /HDv5MuUFr5DZdX7Es+Yd5VFgcFaKBhPDKLFqlo1TClUTI6a7mAVyIQyKWOWMEHx
# jys0zmeGzE3RhAPuAuPc83NSzKuhuKGCFykwghclBgorBgEEAYI3AwMBMYIXFTCC
# FxEGCSqGSIb3DQEHAqCCFwIwghb+AgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFZBgsq
# hkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCASM7/qtKXCMBO3XhzRYeKws6C35c+F6O4RStDtmmh66QIGZN5DIv8o
# GBMyMDIzMDgyOTEyMzAyOS43OTdaMASAAgH0oIHYpIHVMIHSMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJl
# bGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNO
# OjJBRDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBT
# ZXJ2aWNloIIReDCCBycwggUPoAMCAQICEzMAAAGxypBD7gvwA6sAAQAAAbEwDQYJ
# KoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMjIw
# OTIwMjAyMTU5WhcNMjMxMjE0MjAyMTU5WjCB0jELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3Bl
# cmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoyQUQ0LTRC
# OTItRkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAIaiqz7V7BvH7IOMPEeDM2Uw
# CpM8LxAUPeJ7Uvu9q0RiDBdBgshC/SDre3/YJBqGpn27a7XWOMviiBUfMNff51Nx
# KFoSX62Gpq36YLRZk2hN1wigrCO656z5pVTjJp3Q8jdYAJX3ruJea3ccfTgxAgT3
# Uv/sP4w0+yZAYa2JZalV3MBgIFi3VwKFA4ClQcr+V4SpGzqz8faqabmYypuJ35Zn
# 8G/201pAN2jDEOu7QaDC0rGyDdwSTVmXcHM46EFV6N2F69nwfj2DZh74gnA1DB7N
# FcZn+4v1kqQWn7AzBJ+lmOxvKrURlV/u19Mw1YP+zVQyzKn5/4r/vuYSRj/thZr+
# FmZAUtTAacLzouBENuaSBuOY1k330eMp8nndSNUsUjj/nn7gcdFqzdQNudJb+Xxm
# Rwi9LwjA0/8PlOsKTZ8Xw6EEWPVLfNojSuWpZMTaMzz/wzSPp5J02kpYmkdl50lw
# yGRLO5X7iWINKmoXySdQmRdiGMTkvRStXKxIoEm/EJxCaI+k4S3+BWKWC07EV5T3
# UG7wbFb4LfvgbbaKM58HytAyjDnO9fEi0vrp8JFTtGhdtwhEEkraMtGVt+CvnG0Z
# lH4mvpPRPuJbqE509e6CqmHwzTuUZPFMFWvJn4fPv0d32Ws9jv2YYmE/0WR1fULs
# +TxxpWgn1z0PAOsxSZRPAgMBAAGjggFJMIIBRTAdBgNVHQ4EFgQU9Jtnke8NrYSK
# 9fFnoVE0pr0OOZMwHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXwYD
# VR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9j
# cmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3JsMGwG
# CCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIw
# MjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcD
# CDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQADggIBANjnN5JqpeVShIrQ
# IaAQnNVOv1cDEmCkD6oQufX9NGOX28Jw/gdkGtMJyagA0lVbumwQla5LPhBm5LjI
# UW/5aYhzSlZ7lxeDykw57wp2AqoMAJm7bXcXtJt/HyaRlN35hAhBV+DmGnBIRcE5
# C2bSFFY3asD50KUSCPmKl/0NFadPeoNqbj5ZUna8VAfMSDsdxeyxjs8r/9Vpqy8l
# gIVBqRrXtFt6n1+GFpJ+2AjPspfPO7Y+Y/ozv5dTEYum5eDLDdD1thQmHkW8s0BB
# DbIOT3d+dWdPETkf50fM/nALkMEdvYo2gyiJrOSG0a9Z2S/6mbJBUrgrkgPp2HjL
# kycR4Nhwl67ehAhWxJGKD2gRk88T2KKXLiRHAoYTZVpHbgkYLspBLJs9C77ZkuxX
# uvIOGaId7EJCBOVRMJygtx8FXpoSu3jWEdau0WBMXxhVAzEHTu7UKW3Dw+KGgW7R
# Rlhrt589SK8lrPSvPM6PPnqEFf6PUsTVO0bOkzKnC3TOgui4JhlWliigtEtg1SlP
# MxcdMuc9uYdWSe1/2YWmr9ZrV1RuvpSSKvJLSYDlOf6aJrpnX7YKLMRoyKdzTkcv
# Xw1JZfikJeGJjfRs2cT2JIbiNEGK4i5srQbVCvgCvdYVEVZXVW1Iz/LJLK9XbIkM
# MjmECJEsa07oadKcO4ed9vY6YYBGMIIHcTCCBVmgAwIBAgITMwAAABXF52ueAptJ
# mQAAAAAAFTANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNh
# dGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEwOTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1
# WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEB
# BQADggIPADCCAgoCggIBAOThpkzntHIhC3miy9ckeb0O1YLT/e6cBwfSqWxOdcjK
# NVf2AX9sSuDivbk+F2Az/1xPx2b3lVNxWuJ+Slr+uDZnhUYjDLWNE893MsAQGOhg
# fWpSg0S3po5GawcU88V29YZQ3MFEyHFcUTE3oAo4bo3t1w/YJlN8OWECesSq/XJp
# rx2rrPY2vjUmZNqYO7oaezOtgFt+jBAcnVL+tuhiJdxqD89d9P6OU8/W7IVWTe/d
# vI2k45GPsjksUZzpcGkNyjYtcI4xyDUoveO0hyTD4MmPfrVUj9z6BVWYbWg7mka9
# 7aSueik3rMvrg0XnRm7KMtXAhjBcTyziYrLNueKNiOSWrAFKu75xqRdbZ2De+JKR
# Hh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9fvzZnkXftnIv231fgLrbqn427DZM9itu
# qBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdHGO2n6Jl8P0zbr17C89XYcz1DTsEzOUyO
# ArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7XKHYC4jMYctenIPDC+hIK12NvDMk2ZItb
# oKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiER9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6
# bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/eKtFtvUeh17aj54WcmnGrnu3tz5q4i6t
# AgMBAAGjggHdMIIB2TASBgkrBgEEAYI3FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQW
# BBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAdBgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacb
# UzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYz
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnku
# aHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMIMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIA
# QwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2
# VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwu
# bWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEw
# LTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93
# d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYt
# MjMuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQCdVX38Kq3hLB9nATEkW+Geckv8qW/q
# XBS2Pk5HZHixBpOXPTEztTnXwnE2P9pkbHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6
# U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gngugnue99qb74py27YP0h1AdkY3m2CDPVt
# I1TkeFN1JFe53Z/zjj3G82jfZfakVqr3lbYoVSfQJL1AoL8ZthISEV09J+BAljis
# 9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHCgRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTp
# kbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0
# sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEUBHG/ZPkkvnNtyo4JvbMBV0lUZNlz138e
# W0QBjloZkWsNn6Qo3GcZKCS6OEuabvshVGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJ
# sWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7
# Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrpNPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0
# dFtq0Z4+7X6gMTN9vMvpe784cETRkPHIqzqKOghif9lwY1NNje6CbaUFEMFxBmoQ
# tB1VM1izoXBm8qGCAtQwggI9AgEBMIIBAKGB2KSB1TCB0jELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxh
# bmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoy
# QUQ0LTRCOTItRkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUA7WSxvqQDbA7vyy69Tn0wP5BGxyuggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOiX6aUwIhgPMjAyMzA4MjkxMTUxMDFaGA8yMDIzMDgzMDExNTEwMVowdDA6Bgor
# BgEEAYRZCgQBMSwwKjAKAgUA6JfppQIBADAHAgEAAgIIxTAHAgEAAgIRtjAKAgUA
# 6Jk7JQIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAID
# B6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAKYwMrY/PrekE+Z3RyXP
# kUTBAHjj7db2ieSyjc8oq5qEDBJ+jMwrsvF8E5MXhiIAIRrHE2FLCnlZtBaRR2TW
# 6NZ2Nd0ZVJwlM8b6YJRjve9CjCDt4MCOFgtQRGWg3H/FV5Lo1v1RIp4o8QvNT3Or
# vXQPbAIUJxm/RgBZvMvDvgmTMYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTACEzMAAAGxypBD7gvwA6sAAQAAAbEwDQYJYIZIAWUDBAIB
# BQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQx
# IgQg4l6YIviQy25oDGxJUmuatARYirKKzZTCSXfV/Wowf3cwgfoGCyqGSIb3DQEJ
# EAIvMYHqMIHnMIHkMIG9BCCD7Q2LFFvfqeDoy9gpu35t6dYerrDO0cMTlOIomzTP
# bDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# JjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABscqQ
# Q+4L8AOrAAEAAAGxMCIEIBOjGUvPYFBWD1DhS90u2w+ZG74ojGr8evMrZjNK3cko
# MA0GCSqGSIb3DQEBCwUABIICADTarNowJ3CqY6eaS2iI7YUBaRRNdRCSzzyUsUCf
# bbalZ7A2BaUevpfHV1gIFPFPpEzeHWDGBfXcTUJifDBkpAWFdpTXeuje/eTAnHoa
# pM9ye9CEeOBqbTKWd83Q/0jJlnQtgt4d0evN/l81yJj1QbwkTQTwqXrXOPKBl8IY
# DoAel5n5EaoEVzj3Nl1W2+2g0OF7AdsWVNbNvZtc4amVbqgEL1Xu3t6e3fo00rR/
# RkQQ+EOJcOj9Xh5boaKdpq9Vm1cSixuiq7y3BlE01eu71GYYYJxo5LjUYXXof4hH
# qJqroYWHkh6W2fisvOp2YNP12we8KzbAXfOZf0NHFYr5sQ25ZXA/gqJSKc32ei1L
# GdimeYZ8PAQLeufnMJ2ulHVfEJT8EcozDEhWsmDhnUnOtx6D9ZZdtfHk1pyj40zd
# 8yZUp0nNSw/8Vfmm9cfKFnRClKFe9o7EfAcqelaMcWf/IrbqDXXMUIr/IOMgWUX7
# 5KADhceYy6ubS67BtGcjNx7InTwMsMNajrEk7Okc4sETgZMcRtpOpSkiOU6K66C1
# mXeBSm7/6/47YbpMP1bxRaU4seBRLNikx6UfYo/dJi6BPm2VCfLafHWnMoEWN56w
# VGpbBo3Xr9TYLCNdBB+xd4Re2xHtaGtj064CFgv6Y1CTXybu6UVyNXLu05G1f8Qn
# nWuW
# SIG # End signature block
