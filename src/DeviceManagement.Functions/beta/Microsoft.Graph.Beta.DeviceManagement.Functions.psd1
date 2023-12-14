#
# Module manifest for module 'Microsoft.Graph.Beta.DeviceManagement.Functions'
#
# Generated by: Microsoft Corporation
#
# Generated on: 12/7/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.DeviceManagement.Functions.psm1'

# Version number of this module.
ModuleVersion = '2.11.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'a629509a-ebee-475b-aa2d-5201c47a425c'

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
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; RequiredVersion = '2.11.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 
               './bin/Microsoft.Graph.Beta.DeviceManagement.Functions.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Beta.DeviceManagement.Functions.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Compare-MgBetaDeviceManagementIntent', 
               'Compare-MgBetaDeviceManagementTemplate', 
               'Compare-MgBetaDeviceManagementTemplateMigratableTo', 
               'Confirm-MgBetaDeviceManagementWindowsEnrollmentAutoDiscovery', 
               'Export-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfileMobileConfig', 
               'Get-MgBetaDeviceManagementAssignedRoleDetail', 
               'Get-MgBetaDeviceManagementAssignmentFilterPlatformSupportedProperty', 
               'Get-MgBetaDeviceManagementAssignmentFilterState', 
               'Get-MgBetaDeviceManagementAssignmentFilterSupportedProperty', 
               'Get-MgBetaDeviceManagementAuditEventAuditActivityType', 
               'Get-MgBetaDeviceManagementAuditEventAuditCategory', 
               'Get-MgBetaDeviceManagementComanagedDeviceCloudPcRemoteActionResult', 
               'Get-MgBetaDeviceManagementComanagedDeviceCloudPcReviewStatus', 
               'Get-MgBetaDeviceManagementComanagedDeviceFileVaultKey', 
               'Get-MgBetaDeviceManagementComanagedDeviceNonCompliantSetting', 
               'Get-MgBetaDeviceManagementComanagedDeviceSummary', 
               'Get-MgBetaDeviceManagementComanagementEligibleDeviceSummary', 
               'Get-MgBetaDeviceManagementConfigManagerCollectionPolicySummary', 
               'Get-MgBetaDeviceManagementConfigurationPolicyLatestUpgradeDefaultBaselinePolicy', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingEncryptionPublicKey', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingExpiringVppTokenCount', 
               'Get-MgBetaDeviceManagementDeviceCompliancePolicyDeviceScheduledToRetire', 
               'Get-MgBetaDeviceManagementDeviceConfigurationIoAvailableUpdateVersion', 
               'Get-MgBetaDeviceManagementDeviceConfigurationOmaSettingPlainTextValue', 
               'Get-MgBetaDeviceManagementDeviceHealthScriptRemediationHistory', 
               'Get-MgBetaDeviceManagementDeviceHealthScriptRemediationSummary', 
               'Get-MgBetaDeviceManagementEffectivePermission', 
               'Get-MgBetaDeviceManagementIntentCustomizedSetting', 
               'Get-MgBetaDeviceManagementManagedDeviceCloudPcRemoteActionResult', 
               'Get-MgBetaDeviceManagementManagedDeviceCloudPcReviewStatus', 
               'Get-MgBetaDeviceManagementManagedDeviceFileVaultKey', 
               'Get-MgBetaDeviceManagementManagedDeviceNonCompliantSetting', 
               'Get-MgBetaDeviceManagementMonitoringAlertRecordPortalNotification', 
               'Get-MgBetaDeviceManagementResourceOperationScopeForUser', 
               'Get-MgBetaDeviceManagementReusablePolicySettingReferencingConfigurationPolicyLatestUpgradeDefaultBaselinePolicy', 
               'Get-MgBetaDeviceManagementRoleScopeTagById', 
               'Get-MgBetaDeviceManagementRoleScopeTagByResource', 
               'Get-MgBetaDeviceManagementSuggestedEnrollmentLimit', 
               'Get-MgBetaDeviceManagementTenantAttachRbacState', 
               'Get-MgBetaDeviceManagementVirtualEndpointAuditEventAuditActivityType', 
               'Get-MgBetaDeviceManagementVirtualEndpointCloudPcConnectivityHistory', 
               'Get-MgBetaDeviceManagementVirtualEndpointCloudPcFrontlineCloudPcAccessState', 
               'Get-MgBetaDeviceManagementVirtualEndpointCloudPcLaunchInfo', 
               'Get-MgBetaDeviceManagementVirtualEndpointCloudPcProvisionedCloudPc', 
               'Get-MgBetaDeviceManagementVirtualEndpointCloudPcShiftWorkCloudPcAccessState', 
               'Get-MgBetaDeviceManagementVirtualEndpointCloudPcSupportedCloudPcRemoteAction', 
               'Get-MgBetaDeviceManagementVirtualEndpointDeviceImageSourceImage', 
               'Get-MgBetaDeviceManagementVirtualEndpointEffectivePermission', 
               'Get-MgBetaDeviceManagementVirtualEndpointReportRealTimeRemoteConnectionLatency', 
               'Get-MgBetaDeviceManagementVirtualEndpointReportRealTimeRemoteConnectionStatus', 
               'Get-MgBetaDeviceManagementVirtualEndpointScopedPermission', 
               'Get-MgBetaDeviceManagementVirtualEndpointSnapshotStorageAccount', 
               'Get-MgBetaDeviceManagementVirtualEndpointSnapshotSubscription', 
               'Get-MgBetaDeviceManagementVirtualEndpointTenantEncryptionSetting', 
               'Invoke-MgBetaAppDeviceManagementComanagedDeviceDiagnostic', 
               'Invoke-MgBetaAppDeviceManagementManagedDeviceDiagnostic', 
               'Invoke-MgBetaCustomDeviceManagementRoleScopeTag', 
               'Invoke-MgBetaDownloadDeviceManagementApplePushNotificationCertificateApplePushNotificationCertificateSigningRequest', 
               'Invoke-MgBetaExperienceDeviceManagement', 
               'Invoke-MgBetaGraphDeviceManagement', 
               'Invoke-MgBetaIsDeviceManagementDeviceHealthScriptGlobalScriptAvailable', 
               'Invoke-MgBetaSummarizeDeviceManagementUserExperienceAnalyticDevicePerformanceDevice', 
               'Invoke-MgBetaSummarizeDeviceManagementUserExperienceAnalyticRemoteConnectionDeviceRemoteConnection', 
               'Invoke-MgBetaSummarizeDeviceManagementUserExperienceAnalyticResourcePerformanceDeviceResourcePerformance'

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
# MIIoKQYJKoZIhvcNAQcCoIIoGjCCKBYCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAacR4LQqiDdIh1
# 3LKUQd2Ke7q/ec1XYKSIUjMRjf7J6aCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# /Xmfwb1tbWrJUnMTDXpQzTGCGgkwghoFAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEILp/53w/qFGmb1MiwJCZqNlk
# BcdKhbOODEJY+3zt/s1EMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEACS6dVz1u60hX4YV+smGB7dnoSVrHeRV6k9q6Vom7F4NVls6fV4BZGk2/
# xdQR0W6Wsgujaw/S7zoanlR6r8EWnC5ZlJbYjp6edUJP4qwXMVISlIAJ0xqtkpmw
# duWzq0R5oNy2ZrSRXWRbepSGpym/g3dL2lXPiN+eMHE42MpAX9zafZ9T6udCcLwh
# Dhxisy2aYjhdwReU8jmlythVmHN6MMa7iOVcWkDUZjD4oQZF8UYrwdcZTyALmdfF
# qX2zoI1kyUl1BUQY0lgY+0l5duLYANgb5t7FNrElNZUe0oEedY6JDQD1Ja8tZFb/
# b6SMtDfTY+AW+gMdmF62r7KhRXbsS6GCF5MwghePBgorBgEEAYI3AwMBMYIXfzCC
# F3sGCSqGSIb3DQEHAqCCF2wwghdoAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFRBgsq
# hkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCBMsUz8SeNmnQ5mPMBTcLyCCEgO+BF+lat6m0g9RltnXwIGZVbV89PZ
# GBIyMDIzMTIwNzE2NDI1Ni42NlowBIACAfSggdGkgc4wgcsxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJzAlBgNVBAsTHm5TaGllbGQgVFNTIEVTTjozMzAzLTA1
# RTAtRDk0NzElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaCC
# EeowggcgMIIFCKADAgECAhMzAAABzIal3Dfr2WEtAAEAAAHMMA0GCSqGSIb3DQEB
# CwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTIzMDUyNTE5MTIw
# MVoXDTI0MDIwMTE5MTIwMVowgcsxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMx
# JzAlBgNVBAsTHm5TaGllbGQgVFNTIEVTTjozMzAzLTA1RTAtRDk0NzElMCMGA1UE
# AxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCCAiIwDQYJKoZIhvcNAQEB
# BQADggIPADCCAgoCggIBAMyxIgXx702YRz7zc1VkaBZZmL/AFi3zOHEB9IYzvHDs
# rsJsD/UDgaGi8++Qhjzve2fLN3Jl77pgdfH5F3rXyVAOaablfh66Jgbnct3tYgr4
# N36HKLQf3sPoczhnMaqi+bAHR9neWH6mEkug9P73KtMsXOSQrDZVxvvBcwHOIPQx
# VVhubBGVFrKlOe2Xf0gQ0ISKNb2PowSVPJc/bOtzQ62FA3lGsxNjmJmNrczIcIWZ
# gwaKeYd+2xobdh2LwZrwFCN22hObl1WGeqzaoo0Q6plKifbxHhd9/S2UkvlQfIjd
# vLAf/7NB4m7yqexIKLxUU86xkRvpxnOFcdoCJIa10oBtBFoAiETFshSl4nKkLuX7
# CooLcE70AMa6kH1mBQVtK/kQIWMwPNt+bwznPPYDjFg09Bepm/TAZYv6NO9vuQVi
# IM8977NHIFvOatKk5sHteqOrNQU0qXCn4zHXmTUXsUyzkQza4brwhCx0AYGRltIO
# a4aaM9tnt22Kb5ce6Hc1LomZdg9LuuKSkJtSwxkyfl5bGJYUiTp/TSyRHhEtaaHQ
# 3o6r4pgjV8Dn0vMaIBs6tzGC9CRGjc4PijUlb3PVM0zARuTM+tcyjyusay4ajJhZ
# yyb3GF3QZchEccLrifNsjd7QbmOoSxZBzi5pB5JHKvvQpGKPNXJaONh+wS29UyUn
# AgMBAAGjggFJMIIBRTAdBgNVHQ4EFgQUgqYcZF08h0tFe2xHldFLIzf7aQwwHwYD
# VR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXwYDVR0fBFgwVjBUoFKgUIZO
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIw
# VGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3JsMGwGCCsGAQUFBwEBBGAwXjBc
# BggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0
# cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcnQwDAYD
# VR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDAOBgNVHQ8BAf8EBAMC
# B4AwDQYJKoZIhvcNAQELBQADggIBAHkZQyj1e+JSXeDva7yhBOisgoOgB2BZngtD
# 350ARAKZp62xOGTFs2bXmx67sabCll2ExA3xM110aSLmzkh75oDZUSj29nPfWWW6
# wcFcBWtC2m59Cq0gD7aee6x9pi+KK2vqnmRVPrT0shM5iB0pFYSl/H/jJPlH3Ix4
# rGjGSTy3IaIY9krjRJPlnXg490l9VuRh4K+UtByWxfX5YFk3H9dm9rMmZeO9iNO4
# bRBtmnHDhk7dmh99BjFlhHOfTPjVTswMWVejaKF9qx1se65rqSkfEn0AihR6+Heb
# O9TFinS7TPfBgM+ku6j4zZViHxc4JQHS7vnEbdLn73xMqYVupliCmCvo/5gp5qjZ
# ikHWLOzznRhLO7BpfuRHEBRGWY3+Pke/jBpuc59lvfqYOomngh4abA+3Ajy0Q+y5
# ECbKt56PKGRlXt1+Ang3zdAGGkdVmUHgWaUlHzIXdoHXlBbq3DgJof48wgO53oZ4
# 4k7hxAT6VNzqsgmY3hx+LZNMbt7j1O+EJd8FLanM7Jv1h6ZKbSSuTyMmHrOB4arO
# 2TvN7B8T7eyFBFzvixctjnym9WjOd+B8a/LWWVurg57L3oqi7CK6EO3G4qVOdbun
# DvFo0+Egyw7Fbx2lKn3XkW0p86opH918k6xscNIlj+KInPiZYoAajJ14szrMuaiF
# EI9aT9DmMIIHcTCCBVmgAwIBAgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG
# 9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEy
# MDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIw
# MTAwHhcNMjEwOTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBQQ0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# AOThpkzntHIhC3miy9ckeb0O1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az
# /1xPx2b3lVNxWuJ+Slr+uDZnhUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V2
# 9YZQ3MFEyHFcUTE3oAo4bo3t1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oa
# ezOtgFt+jBAcnVL+tuhiJdxqD89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkN
# yjYtcI4xyDUoveO0hyTD4MmPfrVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7K
# MtXAhjBcTyziYrLNueKNiOSWrAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRf
# NN0Sidb9pSB9fvzZnkXftnIv231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SU
# HDSCD/AQ8rdHGO2n6Jl8P0zbr17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoY
# WmEBc8pnol7XKHYC4jMYctenIPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5
# C4lh8zYGNRiER9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8
# FdsaN8cIFRg/eKtFtvUeh17aj54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TAS
# BgkrBgEEAYI3FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1
# Kc8Q/y8E7jAdBgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUw
# UzBRBgwrBgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNy
# b3NvZnQuY29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoG
# CCsGAQUFBwMIMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIB
# hjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fO
# mhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9w
# a2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggr
# BgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNv
# bS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3
# DQEBCwUAA4ICAQCdVX38Kq3hLB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEz
# tTnXwnE2P9pkbHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJW
# AAOwBb6J6Gngugnue99qb74py27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G
# 82jfZfakVqr3lbYoVSfQJL1AoL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/Aye
# ixmJ5/ALaoHCgRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI9
# 5ko+ZjtPu4b6MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1j
# dEgssU5HLcEUBHG/ZPkkvnNtyo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZ
# KCS6OEuabvshVGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xB
# Zj1p/cvBQUl+fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuP
# Ntq6TPmb/wrpNPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvp
# e784cETRkPHIqzqKOghif9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCA00w
# ggI1AgEBMIH5oYHRpIHOMIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMScw
# JQYDVQQLEx5uU2hpZWxkIFRTUyBFU046MzMwMy0wNUUwLUQ5NDcxJTAjBgNVBAMT
# HE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAE5O
# 5ne5h+KKFLjNFOjGKwO32YmkoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTAwDQYJKoZIhvcNAQELBQACBQDpHFp8MCIYDzIwMjMxMjA3MTQ1MTQw
# WhgPMjAyMzEyMDgxNDUxNDBaMHQwOgYKKwYBBAGEWQoEATEsMCowCgIFAOkcWnwC
# AQAwBwIBAAICIMwwBwIBAAICE6MwCgIFAOkdq/wCAQAwNgYKKwYBBAGEWQoEAjEo
# MCYwDAYKKwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG
# 9w0BAQsFAAOCAQEAZ3FVudx0wwVNObik6+Jbqt4/vVKKOjv4EumgLArK+bs07UYX
# EpOo9IiIq/Pju9BJ21p/pZAfG2s/UTDNUemlUVwU9bTe5I8k1qKYZhlWswojhV+7
# 5agq+qufmsew9W2GXAY1fN6f357Mtz2pKh/VVcxrmM7rnx9zNPW0wfjGrpAwX6WX
# zxkrlcD2j4a6sKBWghvC718vOmT1fqc4l21aUzBg4HoUIgFauxJp7e78msVjJ2zW
# iA6FBWvol4HrE4KyZLtatjHaC2lqadl1IRftCeZahfN/9BOuPzr5PqWvpgZN6OAo
# 6dcJep3Wxbi6glq21Icmlz9EPUKELdT8v0oyZzGCBA0wggQJAgEBMIGTMHwxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABzIal3Dfr2WEtAAEAAAHMMA0G
# CWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQwLwYJ
# KoZIhvcNAQkEMSIEIOd3VvmgElmhe2Kf3AMRNPtbcdeurwVpWwOmQqxUfATKMIH6
# BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQg1u5lAcL+wwIT5yApVKTAqkMgJ+d5
# 8VliANsXgetwWOYwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAx
# MAITMwAAAcyGpdw369lhLQABAAABzDAiBCBZ/iJmKYH9/M8rjebMFoBqWDvapDWG
# E2mS1Ql9/BjMfDANBgkqhkiG9w0BAQsFAASCAgCNkLw90cxd4Uyj8Vvj+UJfmIG0
# 9+o2FR0MDZLP6w4dG5FqxxQRKHT5Xf2hI/81xBn4F3QCEs7gkNupd98y/PbJess9
# JsThh4yu3K4LdAlmJAjVSm7Qac/8NbRR0MvedynLCBb6ESkTapLmU91vERSRDCqS
# DI/maPCt9cGLg8oPQRdQCdcXyNIDLb5ngpt726Wvfl6O93KYHbRlOCwDoNZf07ss
# 7jjB+Q40H4wIVl90maZbFNno1PaiQtgVC6O9PVt9JYbOEPTl9UhdoV8m1oMPW9/p
# 9UU/Zw/Lr2CVEWUo7m+PJ6NCHp0jmuGQox1Rc3CWQZLt2j3honUhdSg6Z3XaHGj7
# 7g9IZM6YGDEOeljDKKv8Ut/lHvH/7+zpXmrvZwUVQbsDcZ862BZWt7+RI+BZhFb3
# UpPG5Y5q3kvnqcaQqagd+aiMcYXfrxxil+8g7X0GaiRnnLwlyh2XzsgNfds0CBgu
# cPbPWdqJW6Zqcke2bccnOVpFSVh3wpzfjtXlUL5d1G8zhSqn1XJ1G6cTLN48+cu8
# EEwOZD4EyqWcoDNG7sDZTNHDs/xZjXfmcLvAGTZ3dw7n9THEbrMUWa+NIuCzcGYe
# kyuyhQWzgaZqSBJEugcOhc5GyueCJs/O1i662SHAKgJEnqr5FTf2bsy5SEoyhl12
# hB/y1oEbQY3o1+8x6w==
# SIG # End signature block
