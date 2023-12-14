#
# Module manifest for module 'Microsoft.Graph.Beta.DeviceManagement.Enrollment'
#
# Generated by: Microsoft Corporation
#
# Generated on: 12/7/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.DeviceManagement.Enrollment.psm1'

# Version number of this module.
ModuleVersion = '2.11.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'f1430cdd-e7c8-4cb3-af1c-4267717fc906'

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
               './bin/Microsoft.Graph.Beta.DeviceManagement.Enrollment.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 
               './Microsoft.Graph.Beta.DeviceManagement.Enrollment.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'Get-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'Get-MgBetaDeviceManagementAndroidForWorkEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignmentCount', 
               'Get-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementAutopilotEvent', 
               'Get-MgBetaDeviceManagementAutopilotEventCount', 
               'Get-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'Get-MgBetaDeviceManagementAutopilotEventPolicyStatusDetailCount', 
               'Get-MgBetaDeviceManagementConditionalAccessSetting', 
               'Get-MgBetaDeviceManagementDepOnboardingSetting', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingCount', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingDefaultIoEnrollmentProfile', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingDefaultMacOSEnrollmentProfile', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfileCount', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'Get-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignmentCount', 
               'Get-MgBetaDeviceManagementDeviceEnrollmentConfigurationCount', 
               'Get-MgBetaDeviceManagementImportedDeviceIdentity', 
               'Get-MgBetaDeviceManagementImportedDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'Get-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDeviceCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDeviceDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDeviceIntendedDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignmentCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentity', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentityCount', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentityDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotDeviceIdentityIntendedDeploymentProfile', 
               'Get-MgBetaDeviceManagementWindowsAutopilotSetting', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignmentCount', 
               'Get-MgBetaDeviceManagementWindowsFeatureUpdateProfileCount', 
               'Get-MgBetaRoleManagement', 'Get-MgBetaRoleManagementCloudPc', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespace', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceCount', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionAuthenticationContext', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionCount', 
               'Get-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionResourceScope', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignment', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentAppScopeCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentDirectoryScope', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentDirectoryScopeCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentPrincipal', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentPrincipalCount', 
               'Get-MgBetaRoleManagementCloudPcRoleAssignmentRoleDefinition', 
               'Get-MgBetaRoleManagementCloudPcRoleDefinition', 
               'Get-MgBetaRoleManagementCloudPcRoleDefinitionCount', 
               'Get-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'Get-MgBetaRoleManagementDeviceManagement', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceCount', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionAuthenticationContext', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionCount', 
               'Get-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionResourceScope', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScopeCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentDirectoryScope', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentDirectoryScopeCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentPrincipal', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentPrincipalCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleAssignmentRoleDefinition', 
               'Get-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'Get-MgBetaRoleManagementDeviceManagementRoleDefinitionCount', 
               'Get-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom', 
               'New-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'New-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'New-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'New-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'New-MgBetaDeviceManagementAutopilotEvent', 
               'New-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'New-MgBetaDeviceManagementDepOnboardingSetting', 
               'New-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'New-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'New-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'New-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'New-MgBetaDeviceManagementImportedDeviceIdentity', 
               'New-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'New-MgBetaDeviceManagementWindowsAutopilotDeviceIdentity', 
               'New-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'New-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'New-MgBetaRoleManagementCloudPcResourceNamespace', 
               'New-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'New-MgBetaRoleManagementCloudPcRoleAssignment', 
               'New-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'New-MgBetaRoleManagementCloudPcRoleDefinition', 
               'New-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'New-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'New-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'New-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'New-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'New-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'New-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom', 
               'Remove-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'Remove-MgBetaDeviceManagementAutopilotEvent', 
               'Remove-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'Remove-MgBetaDeviceManagementConditionalAccessSetting', 
               'Remove-MgBetaDeviceManagementDepOnboardingSetting', 
               'Remove-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'Remove-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'Remove-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'Remove-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'Remove-MgBetaDeviceManagementImportedDeviceIdentity', 
               'Remove-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotDeviceIdentity', 
               'Remove-MgBetaDeviceManagementWindowsAutopilotSetting', 
               'Remove-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'Remove-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'Remove-MgBetaRoleManagementCloudPc', 
               'Remove-MgBetaRoleManagementCloudPcResourceNamespace', 
               'Remove-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'Remove-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionResourceScope', 
               'Remove-MgBetaRoleManagementCloudPcRoleAssignment', 
               'Remove-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'Remove-MgBetaRoleManagementCloudPcRoleDefinition', 
               'Remove-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'Remove-MgBetaRoleManagementDeviceManagement', 
               'Remove-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'Remove-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'Remove-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionResourceScope', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'Remove-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom', 
               'Update-MgBetaDeviceManagementAndroidDeviceOwnerEnrollmentProfile', 
               'Update-MgBetaDeviceManagementAndroidForWorkEnrollmentProfile', 
               'Update-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfile', 
               'Update-MgBetaDeviceManagementAppleUserInitiatedEnrollmentProfileAssignment', 
               'Update-MgBetaDeviceManagementAutopilotEvent', 
               'Update-MgBetaDeviceManagementAutopilotEventPolicyStatusDetail', 
               'Update-MgBetaDeviceManagementConditionalAccessSetting', 
               'Update-MgBetaDeviceManagementDepOnboardingSetting', 
               'Update-MgBetaDeviceManagementDepOnboardingSettingEnrollmentProfile', 
               'Update-MgBetaDeviceManagementDepOnboardingSettingImportedAppleDeviceIdentity', 
               'Update-MgBetaDeviceManagementDeviceEnrollmentConfiguration', 
               'Update-MgBetaDeviceManagementDeviceEnrollmentConfigurationAssignment', 
               'Update-MgBetaDeviceManagementImportedDeviceIdentity', 
               'Update-MgBetaDeviceManagementImportedWindowsAutopilotDeviceIdentity', 
               'Update-MgBetaDeviceManagementWindowsAutopilotDeploymentProfile', 
               'Update-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignedDevice', 
               'Update-MgBetaDeviceManagementWindowsAutopilotDeploymentProfileAssignment', 
               'Update-MgBetaDeviceManagementWindowsAutopilotSetting', 
               'Update-MgBetaDeviceManagementWindowsFeatureUpdateProfile', 
               'Update-MgBetaDeviceManagementWindowsFeatureUpdateProfileAssignment', 
               'Update-MgBetaRoleManagement', 'Update-MgBetaRoleManagementCloudPc', 
               'Update-MgBetaRoleManagementCloudPcResourceNamespace', 
               'Update-MgBetaRoleManagementCloudPcResourceNamespaceResourceAction', 
               'Update-MgBetaRoleManagementCloudPcResourceNamespaceResourceActionResourceScope', 
               'Update-MgBetaRoleManagementCloudPcRoleAssignment', 
               'Update-MgBetaRoleManagementCloudPcRoleAssignmentAppScope', 
               'Update-MgBetaRoleManagementCloudPcRoleDefinition', 
               'Update-MgBetaRoleManagementCloudPcRoleDefinitionInheritPermissionFrom', 
               'Update-MgBetaRoleManagementDeviceManagement', 
               'Update-MgBetaRoleManagementDeviceManagementResourceNamespace', 
               'Update-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceAction', 
               'Update-MgBetaRoleManagementDeviceManagementResourceNamespaceResourceActionResourceScope', 
               'Update-MgBetaRoleManagementDeviceManagementRoleAssignment', 
               'Update-MgBetaRoleManagementDeviceManagementRoleAssignmentAppScope', 
               'Update-MgBetaRoleManagementDeviceManagementRoleDefinition', 
               'Update-MgBetaRoleManagementDeviceManagementRoleDefinitionInheritPermissionFrom'

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
# MIInvwYJKoZIhvcNAQcCoIInsDCCJ6wCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDmvqZe2iUg1jJp
# phk9P1WGc73cOAu46BRfjTDAngj+rqCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIDpmrIJx2ykiC2lwFTTie0WQ
# y3YOitYgfnGiZcoo7zFqMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAaE/9IL0puCWIicXbXlz8W75SWywVtjModmtBcupZX5NFj9kcAgGXdfTa
# 9k+uXJlME8ccWETRhRDVC2tWC9PWySpZ7q/sFf+epCa/6j88VPJ8t2bdftzVZZpB
# pw306BPYj+NcSbg7uvKcn2Rh+MLIXzprS5ty9+gQyG2R7/xg2mqyxS7qONdtwoQ+
# b/VdNdPAwTbiUI5pjuRG60/trHCz1bB9bfcsdA6sMxJhu99d68QQDqIh3yoh3cl9
# eBrYvlIyYt49XSx92OFbbmVdloiJgOEM5ugqMs+b/DSKvMUXu6fuKYoRdRp9oKcw
# fK0yH5Prgzo9YK+HlF83UwShcFsn66GCFykwghclBgorBgEEAYI3AwMBMYIXFTCC
# FxEGCSqGSIb3DQEHAqCCFwIwghb+AgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFZBgsq
# hkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCC6Dl5Q4/lU8kC60IcaHzMFUP4teI4AFjFlEvbiVsd51QIGZWdRyhvA
# GBMyMDIzMTIwNzE2NDIzMS45MjdaMASAAgH0oIHYpIHVMIHSMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQgSXJl
# bGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNO
# OkQwODItNEJGRC1FRUJBMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBT
# ZXJ2aWNloIIReDCCBycwggUPoAMCAQICEzMAAAHcweCMwl9YXo4AAQAAAdwwDQYJ
# KoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcNMjMx
# MDEyMTkwNzA2WhcNMjUwMTEwMTkwNzA2WjCB0jELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3Bl
# cmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpEMDgyLTRC
# RkQtRUVCQTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAIvIsyA1sjg9kSKJzelrUWF5
# ShqYWL83amn3SE5JyIVPUC7F6qTcLphhHZ9idf21f0RaGrU8EHydF8NxPMR2KVNi
# AtCGPJa8kV1CGvn3beGB2m2ltmqJanG71mAywrkKATYniwKLPQLJ00EkXw5TSwfm
# JXbdgQLFlHyfA5Kg+pUsJXzqumkIvEr0DXPvptAGqkdFLKwo4BTlEgnvzeTfXukz
# X8vQtTALfVJuTUgRU7zoP/RFWt3WagahZ6UloI0FC8XlBQDVDX5JeMEsx7jgJDdE
# nK44Y8gHuEWRDq+SG9Xo0GIOjiuTWD5uv3vlEmIAyR/7rSFvcLnwAqMdqcy/iqQP
# MlDOcd0AbniP8ia1BQEUnfZT3UxyK9rLB/SRiKPyHDlg8oWwXyiv3+bGB6dmdM61
# ur6nUtfDf51lPcKhK4Vo83pOE1/niWlVnEHQV9NJ5/DbUSqW2RqTUa2O2KuvsyRG
# MEgjGJA12/SqrRqlvE2fiN5ZmZVtqSPWaIasx7a0GB+fdTw+geRn6Mo2S6+/bZEw
# S/0IJ5gcKGinNbfyQ1xrvWXPtXzKOfjkh75iRuXourGVPRqkmz5UYz+R5ybMJWj+
# mfcGqz2hXV8iZnCZDBrrnZivnErCMh5Flfg8496pT0phjUTH2GChHIvE4SDSk2hw
# WP/uHB9gEs8p/9Pe/mt9AgMBAAGjggFJMIIBRTAdBgNVHQ4EFgQU6HPSBd0OfEX3
# uNWsdkSraUGe3dswHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXwYD
# VR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9j
# cmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3JsMGwG
# CCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3NvZnQu
# Y29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIw
# MjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcD
# CDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQADggIBANnrb8Ewr8eX/H1s
# Kt3rnwTDx4AqgHbkMNQo+kUGwCINXS3y1GUcdqsK/R1g6Tf7tNx1q0NpKk1JTupU
# JfHdExKtkuhHA+82lT7yISp/Y74dqJ03RCT4Q+8ooQXTMzxiewfErVLt8Wefebnc
# ST0i6ypKv87pCYkxM24bbqbM/V+M5VBppCUs7R+cETiz/zEA1AbZL/viXtHmryA0
# CGd+Pt9c+adsYfm7qe5UMnS0f/YJmEEMkEqGXCzyLK+dh+UsFi0d4lkdcE+Zq5JN
# jIHesX1wztGVAtvX0DYDZdN2WZ1kk+hOMblUV/L8n1YWzhP/5XQnYl03AfXErn+1
# Eatylifzd3ChJ1xuGG76YbWgiRXnDvCiwDqvUJevVRY1qy4y4vlVKaShtbdfgPyG
# eeJ/YcSBONOc0DNTWbjMbL50qeIEC0lHSpL2rRYNVu3hsHzG8n5u5CQajPwx9Pzp
# sZIeFTNHyVF6kujI4Vo9NvO/zF8Ot44IMj4M7UX9Za4QwGf5B71x57OjaX53gxT4
# vzoHvEBXF9qCmHRgXBLbRomJfDn60alzv7dpCVQIuQ062nyIZKnsXxzuKFb0TjXW
# w6OFpG1bsjXpOo5DMHkysribxHor4Yz5dZjVyHANyKo0bSrAlVeihcaG5F74SZT8
# FtyHAW6IgLc5w/3D+R1obDhKZ21WMIIHcTCCBVmgAwIBAgITMwAAABXF52ueAptJ
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
# bmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpE
# MDgyLTRCRkQtRUVCQTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUAHDn/cz+3yRkIUCJfSbL3djnQEqaggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOkcW/QwIhgPMjAyMzEyMDcyMjU3NTZaGA8yMDIzMTIwODIyNTc1NlowdDA6Bgor
# BgEEAYRZCgQBMSwwKjAKAgUA6Rxb9AIBADAHAgEAAgICLzAHAgEAAgIRxjAKAgUA
# 6R2tdAIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAID
# B6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBAKzU6ojvkc87kRfGB1k9
# 8cgvNoSnKoBPt9nEdaipaaegmRPIaDKWXmb7IZ0n9aY5ZUsMirkloNbyGm7dNb2v
# xJHDJwABIG4z9hvuhuXCXJkFG9gVmi23QI5S+oDlaNtqr8KZjBmjeSByr4fqGUjz
# jFdW5VyPl8xPCsakOXIMhfuGMYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTACEzMAAAHcweCMwl9YXo4AAQAAAdwwDQYJYIZIAWUDBAIB
# BQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQx
# IgQgycN3BWYHniAbzvGMgkGG1Jz3a0djgwCc/04V+hrJJHAwgfoGCyqGSIb3DQEJ
# EAIvMYHqMIHnMIHkMIG9BCBTpxeKatlEP4y8qZzjuWL0Ou0IqxELDhX2TLylxIIN
# NzCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# JjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAB3MHg
# jMJfWF6OAAEAAAHcMCIEIFWejBBdk1dgAXUGWjtzAQez0hjt8aicUIWyDFYNatlm
# MA0GCSqGSIb3DQEBCwUABIICAEzaYPAEYxbK2o7kVoq+tC8fQXYnUQmOHyb00PcK
# hfCgFRRvyNCb1vifc4WQq5ik7KieE3juZWCblr9lDIcq3K9KCV0RPygsK7uAvoXQ
# lldCC69lbB+sR8hD/aaTZB04LilLQMgoK5WeJt8GDsEBcAoM+jfjeGrVxs/m/ug6
# Eg1xkVKcR3s+WRiLu10u/dPBNJdp+zzucJA/XgNV0BAQM683yDfnQTj5KNxEAIqB
# 8QMBdiEOTukTcv1EA0v7ov7XkBZGlnYg9KydWPJc8B6DW9jdRds7+KzjT3AqPNpi
# 0xU/A6uF1WbIZlK84MQwzTpKt52NBOp2vyZJP2JabhQhQ++h1/oaPtI6p1Mh2LtU
# tOJgIEtSkPH2uXuvKwmhCJy1pkXGjzulaTKI26t896lOS8o5U6x2RKlVxTGwmDa+
# SX95WcGUjFUshc2IGvGvGxHHPlx89l6wYer64omPo0n8vMsFE7eBncWvlJvSZi2T
# Ezpc71FiVxMv+KJFNFFN8b0a51V4XzS2U2ExTOGI+CpfJf9sdrnCvZSBE9s28s3u
# k/XKDMCaxj3ICN1AdPKRNZA/l7bl2OS2RheImsDBoPfH6XbR0yNrcMt5fqvff5Vm
# nkoSDLYlsXKnYiw0NQ1NjY9eogl0HoCrmbeLOdYg6s05IAefniqPugsBTigCpV16
# 5s7P
# SIG # End signature block
