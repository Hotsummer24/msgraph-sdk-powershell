#
# Module manifest for module 'Microsoft.Graph.Identity.DirectoryManagement'
#
# Generated by: Microsoft Corporation
#
# Generated on: 8/29/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Identity.DirectoryManagement.psm1'

# Version number of this module.
ModuleVersion = '2.5.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'c767240d-585c-42cb-bb2f-6e76e6d639d4'

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
RequiredAssemblies = './bin/Microsoft.Graph.Identity.DirectoryManagement.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Identity.DirectoryManagement.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Confirm-MgContactMemberGroup', 'Confirm-MgContactMemberObject', 
               'Confirm-MgContractMemberGroup', 'Confirm-MgContractMemberObject', 
               'Confirm-MgDeviceMemberGroup', 'Confirm-MgDeviceMemberObject', 
               'Confirm-MgDirectoryDeletedItemMemberGroup', 
               'Confirm-MgDirectoryDeletedItemMemberObject', 
               'Confirm-MgDirectoryRoleMemberGroup', 
               'Confirm-MgDirectoryRoleMemberObject', 
               'Confirm-MgDirectoryRoleTemplateMemberGroup', 
               'Confirm-MgDirectoryRoleTemplateMemberObject', 'Confirm-MgDomain', 
               'Confirm-MgOrganizationMemberGroup', 
               'Confirm-MgOrganizationMemberObject', 'Get-MgContact', 
               'Get-MgContactById', 'Get-MgContactCount', 'Get-MgContactDelta', 
               'Get-MgContactDirectReport', 
               'Get-MgContactDirectReportAsOrgContact', 
               'Get-MgContactDirectReportAsUser', 'Get-MgContactDirectReportCount', 
               'Get-MgContactDirectReportCountAsOrgContact', 
               'Get-MgContactDirectReportCountAsUser', 'Get-MgContactManager', 
               'Get-MgContactMemberGroup', 'Get-MgContactMemberObject', 
               'Get-MgContactMemberOf', 
               'Get-MgContactMemberOfAsAdministrativeUnit', 
               'Get-MgContactMemberOfAsGroup', 'Get-MgContactMemberOfCount', 
               'Get-MgContactMemberOfCountAsAdministrativeUnit', 
               'Get-MgContactMemberOfCountAsGroup', 
               'Get-MgContactTransitiveMemberOf', 
               'Get-MgContactTransitiveMemberOfAsAdministrativeUnit', 
               'Get-MgContactTransitiveMemberOfAsGroup', 
               'Get-MgContactTransitiveMemberOfCount', 
               'Get-MgContactTransitiveMemberOfCountAsAdministrativeUnit', 
               'Get-MgContactTransitiveMemberOfCountAsGroup', 'Get-MgContract', 
               'Get-MgContractById', 'Get-MgContractCount', 'Get-MgContractDelta', 
               'Get-MgContractMemberGroup', 'Get-MgContractMemberObject', 
               'Get-MgDevice', 'Get-MgDeviceByDeviceId', 'Get-MgDeviceById', 
               'Get-MgDeviceCount', 'Get-MgDeviceDelta', 'Get-MgDeviceExtension', 
               'Get-MgDeviceExtensionCount', 'Get-MgDeviceMemberGroup', 
               'Get-MgDeviceMemberObject', 'Get-MgDeviceMemberOf', 
               'Get-MgDeviceMemberOfAsAdministrativeUnit', 
               'Get-MgDeviceMemberOfAsGroup', 'Get-MgDeviceMemberOfCount', 
               'Get-MgDeviceMemberOfCountAsAdministrativeUnit', 
               'Get-MgDeviceMemberOfCountAsGroup', 'Get-MgDeviceRegisteredOwner', 
               'Get-MgDeviceRegisteredOwnerAsAppRoleAssignment', 
               'Get-MgDeviceRegisteredOwnerAsEndpoint', 
               'Get-MgDeviceRegisteredOwnerAsServicePrincipal', 
               'Get-MgDeviceRegisteredOwnerAsUser', 
               'Get-MgDeviceRegisteredOwnerByRef', 
               'Get-MgDeviceRegisteredOwnerCount', 
               'Get-MgDeviceRegisteredOwnerCountAsAppRoleAssignment', 
               'Get-MgDeviceRegisteredOwnerCountAsEndpoint', 
               'Get-MgDeviceRegisteredOwnerCountAsServicePrincipal', 
               'Get-MgDeviceRegisteredOwnerCountAsUser', 
               'Get-MgDeviceRegisteredUser', 
               'Get-MgDeviceRegisteredUserAsAppRoleAssignment', 
               'Get-MgDeviceRegisteredUserAsEndpoint', 
               'Get-MgDeviceRegisteredUserAsServicePrincipal', 
               'Get-MgDeviceRegisteredUserAsUser', 
               'Get-MgDeviceRegisteredUserByRef', 
               'Get-MgDeviceRegisteredUserCount', 
               'Get-MgDeviceRegisteredUserCountAsAppRoleAssignment', 
               'Get-MgDeviceRegisteredUserCountAsEndpoint', 
               'Get-MgDeviceRegisteredUserCountAsServicePrincipal', 
               'Get-MgDeviceRegisteredUserCountAsUser', 
               'Get-MgDeviceTransitiveMemberOf', 
               'Get-MgDeviceTransitiveMemberOfAsAdministrativeUnit', 
               'Get-MgDeviceTransitiveMemberOfAsGroup', 
               'Get-MgDeviceTransitiveMemberOfCount', 
               'Get-MgDeviceTransitiveMemberOfCountAsAdministrativeUnit', 
               'Get-MgDeviceTransitiveMemberOfCountAsGroup', 'Get-MgDirectory', 
               'Get-MgDirectoryAdministrativeUnit', 
               'Get-MgDirectoryAdministrativeUnitCount', 
               'Get-MgDirectoryAdministrativeUnitDelta', 
               'Get-MgDirectoryAdministrativeUnitExtension', 
               'Get-MgDirectoryAdministrativeUnitExtensionCount', 
               'Get-MgDirectoryAdministrativeUnitMember', 
               'Get-MgDirectoryAdministrativeUnitMemberAsApplication', 
               'Get-MgDirectoryAdministrativeUnitMemberAsDevice', 
               'Get-MgDirectoryAdministrativeUnitMemberAsGroup', 
               'Get-MgDirectoryAdministrativeUnitMemberAsOrgContact', 
               'Get-MgDirectoryAdministrativeUnitMemberAsServicePrincipal', 
               'Get-MgDirectoryAdministrativeUnitMemberAsUser', 
               'Get-MgDirectoryAdministrativeUnitMemberByRef', 
               'Get-MgDirectoryAdministrativeUnitMemberCount', 
               'Get-MgDirectoryAdministrativeUnitMemberCountAsApplication', 
               'Get-MgDirectoryAdministrativeUnitMemberCountAsDevice', 
               'Get-MgDirectoryAdministrativeUnitMemberCountAsGroup', 
               'Get-MgDirectoryAdministrativeUnitMemberCountAsOrgContact', 
               'Get-MgDirectoryAdministrativeUnitMemberCountAsServicePrincipal', 
               'Get-MgDirectoryAdministrativeUnitMemberCountAsUser', 
               'Get-MgDirectoryAdministrativeUnitScopedRoleMember', 
               'Get-MgDirectoryAdministrativeUnitScopedRoleMemberCount', 
               'Get-MgDirectoryAttributeSet', 'Get-MgDirectoryAttributeSetCount', 
               'Get-MgDirectoryCustomSecurityAttributeDefinition', 
               'Get-MgDirectoryCustomSecurityAttributeDefinitionAllowedValue', 
               'Get-MgDirectoryCustomSecurityAttributeDefinitionAllowedValueCount', 
               'Get-MgDirectoryCustomSecurityAttributeDefinitionCount', 
               'Get-MgDirectoryDeletedItem', 
               'Get-MgDirectoryDeletedItemAsAdministrativeUnit', 
               'Get-MgDirectoryDeletedItemAsApplication', 
               'Get-MgDirectoryDeletedItemAsDevice', 
               'Get-MgDirectoryDeletedItemAsGroup', 
               'Get-MgDirectoryDeletedItemAsServicePrincipal', 
               'Get-MgDirectoryDeletedItemAsUser', 
               'Get-MgDirectoryDeletedItemById', 
               'Get-MgDirectoryDeletedItemCountAsAdministrativeUnit', 
               'Get-MgDirectoryDeletedItemCountAsApplication', 
               'Get-MgDirectoryDeletedItemCountAsDevice', 
               'Get-MgDirectoryDeletedItemCountAsGroup', 
               'Get-MgDirectoryDeletedItemCountAsServicePrincipal', 
               'Get-MgDirectoryDeletedItemCountAsUser', 
               'Get-MgDirectoryDeletedItemMemberGroup', 
               'Get-MgDirectoryDeletedItemMemberObject', 
               'Get-MgDirectoryFederationConfiguration', 
               'Get-MgDirectoryFederationConfigurationCount', 
               'Get-MgDirectoryOnPremiseSynchronization', 
               'Get-MgDirectoryOnPremiseSynchronizationCount', 
               'Get-MgDirectoryRole', 'Get-MgDirectoryRoleById', 
               'Get-MgDirectoryRoleByRoleTemplateId', 'Get-MgDirectoryRoleCount', 
               'Get-MgDirectoryRoleDelta', 'Get-MgDirectoryRoleMember', 
               'Get-MgDirectoryRoleMemberAsApplication', 
               'Get-MgDirectoryRoleMemberAsDevice', 
               'Get-MgDirectoryRoleMemberAsGroup', 
               'Get-MgDirectoryRoleMemberAsOrgContact', 
               'Get-MgDirectoryRoleMemberAsServicePrincipal', 
               'Get-MgDirectoryRoleMemberAsUser', 'Get-MgDirectoryRoleMemberByRef', 
               'Get-MgDirectoryRoleMemberCount', 
               'Get-MgDirectoryRoleMemberCountAsApplication', 
               'Get-MgDirectoryRoleMemberCountAsDevice', 
               'Get-MgDirectoryRoleMemberCountAsGroup', 
               'Get-MgDirectoryRoleMemberCountAsOrgContact', 
               'Get-MgDirectoryRoleMemberCountAsServicePrincipal', 
               'Get-MgDirectoryRoleMemberCountAsUser', 
               'Get-MgDirectoryRoleMemberGroup', 'Get-MgDirectoryRoleMemberObject', 
               'Get-MgDirectoryRoleScopedMember', 
               'Get-MgDirectoryRoleScopedMemberCount', 
               'Get-MgDirectoryRoleTemplate', 'Get-MgDirectoryRoleTemplateById', 
               'Get-MgDirectoryRoleTemplateCount', 
               'Get-MgDirectoryRoleTemplateDelta', 
               'Get-MgDirectoryRoleTemplateMemberGroup', 
               'Get-MgDirectoryRoleTemplateMemberObject', 'Get-MgDomain', 
               'Get-MgDomainCount', 'Get-MgDomainFederationConfiguration', 
               'Get-MgDomainFederationConfigurationCount', 
               'Get-MgDomainNameReference', 'Get-MgDomainNameReferenceCount', 
               'Get-MgDomainServiceConfigurationRecord', 
               'Get-MgDomainServiceConfigurationRecordCount', 
               'Get-MgDomainVerificationDnsRecord', 
               'Get-MgDomainVerificationDnsRecordCount', 'Get-MgOrganization', 
               'Get-MgOrganizationBranding', 
               'Get-MgOrganizationBrandingBackgroundImage', 
               'Get-MgOrganizationBrandingBannerLogo', 
               'Get-MgOrganizationBrandingCustomCss', 
               'Get-MgOrganizationBrandingFavicon', 
               'Get-MgOrganizationBrandingHeaderLogo', 
               'Get-MgOrganizationBrandingLocalization', 
               'Get-MgOrganizationBrandingLocalizationBackgroundImage', 
               'Get-MgOrganizationBrandingLocalizationBannerLogo', 
               'Get-MgOrganizationBrandingLocalizationCount', 
               'Get-MgOrganizationBrandingLocalizationCustomCss', 
               'Get-MgOrganizationBrandingLocalizationFavicon', 
               'Get-MgOrganizationBrandingLocalizationHeaderLogo', 
               'Get-MgOrganizationBrandingLocalizationSquareLogo', 
               'Get-MgOrganizationBrandingLocalizationSquareLogoDark', 
               'Get-MgOrganizationBrandingSquareLogo', 
               'Get-MgOrganizationBrandingSquareLogoDark', 
               'Get-MgOrganizationById', 'Get-MgOrganizationCount', 
               'Get-MgOrganizationExtension', 'Get-MgOrganizationExtensionCount', 
               'Get-MgOrganizationMemberGroup', 'Get-MgOrganizationMemberObject', 
               'Get-MgSubscribedSku', 'Get-MgUserScopedRoleMemberOf', 
               'Get-MgUserScopedRoleMemberOfCount', 
               'Invoke-MgAvailableDirectoryFederationConfigurationProviderType', 
               'Invoke-MgForceDomainDelete', 'Invoke-MgPromoteDomain', 
               'Invoke-MgRetryContactServiceProvisioning', 'New-MgContact', 
               'New-MgContract', 'New-MgDevice', 'New-MgDeviceExtension', 
               'New-MgDeviceRegisteredOwnerByRef', 
               'New-MgDeviceRegisteredUserByRef', 
               'New-MgDirectoryAdministrativeUnit', 
               'New-MgDirectoryAdministrativeUnitExtension', 
               'New-MgDirectoryAdministrativeUnitMember', 
               'New-MgDirectoryAdministrativeUnitMemberByRef', 
               'New-MgDirectoryAdministrativeUnitScopedRoleMember', 
               'New-MgDirectoryAttributeSet', 
               'New-MgDirectoryCustomSecurityAttributeDefinition', 
               'New-MgDirectoryCustomSecurityAttributeDefinitionAllowedValue', 
               'New-MgDirectoryDeletedItem', 
               'New-MgDirectoryFederationConfiguration', 
               'New-MgDirectoryOnPremiseSynchronization', 'New-MgDirectoryRole', 
               'New-MgDirectoryRoleMemberByRef', 'New-MgDirectoryRoleScopedMember', 
               'New-MgDirectoryRoleTemplate', 'New-MgDomain', 
               'New-MgDomainFederationConfiguration', 
               'New-MgDomainServiceConfigurationRecord', 
               'New-MgDomainVerificationDnsRecord', 'New-MgOrganization', 
               'New-MgOrganizationBrandingLocalization', 
               'New-MgOrganizationExtension', 'New-MgSubscribedSku', 
               'New-MgUserScopedRoleMemberOf', 'Remove-MgContact', 
               'Remove-MgContract', 'Remove-MgDevice', 'Remove-MgDeviceByDeviceId', 
               'Remove-MgDeviceExtension', 'Remove-MgDeviceRegisteredOwnerByRef', 
               'Remove-MgDeviceRegisteredUserByRef', 
               'Remove-MgDirectoryAdministrativeUnit', 
               'Remove-MgDirectoryAdministrativeUnitExtension', 
               'Remove-MgDirectoryAdministrativeUnitMemberByRef', 
               'Remove-MgDirectoryAdministrativeUnitScopedRoleMember', 
               'Remove-MgDirectoryAttributeSet', 
               'Remove-MgDirectoryCustomSecurityAttributeDefinition', 
               'Remove-MgDirectoryCustomSecurityAttributeDefinitionAllowedValue', 
               'Remove-MgDirectoryDeletedItem', 
               'Remove-MgDirectoryFederationConfiguration', 
               'Remove-MgDirectoryOnPremiseSynchronization', 
               'Remove-MgDirectoryRole', 'Remove-MgDirectoryRoleByRoleTemplateId', 
               'Remove-MgDirectoryRoleMemberByRef', 
               'Remove-MgDirectoryRoleScopedMember', 
               'Remove-MgDirectoryRoleTemplate', 'Remove-MgDomain', 
               'Remove-MgDomainFederationConfiguration', 
               'Remove-MgDomainServiceConfigurationRecord', 
               'Remove-MgDomainVerificationDnsRecord', 'Remove-MgOrganization', 
               'Remove-MgOrganizationBranding', 
               'Remove-MgOrganizationBrandingLocalization', 
               'Remove-MgOrganizationExtension', 'Remove-MgSubscribedSku', 
               'Remove-MgUserScopedRoleMemberOf', 'Restore-MgDirectoryDeletedItem', 
               'Set-MgOrganizationBrandingBackgroundImage', 
               'Set-MgOrganizationBrandingBannerLogo', 
               'Set-MgOrganizationBrandingCustomCss', 
               'Set-MgOrganizationBrandingFavicon', 
               'Set-MgOrganizationBrandingHeaderLogo', 
               'Set-MgOrganizationBrandingLocalizationBackgroundImage', 
               'Set-MgOrganizationBrandingLocalizationBannerLogo', 
               'Set-MgOrganizationBrandingLocalizationCustomCss', 
               'Set-MgOrganizationBrandingLocalizationFavicon', 
               'Set-MgOrganizationBrandingLocalizationHeaderLogo', 
               'Set-MgOrganizationBrandingLocalizationSquareLogo', 
               'Set-MgOrganizationBrandingLocalizationSquareLogoDark', 
               'Set-MgOrganizationBrandingSquareLogo', 
               'Set-MgOrganizationBrandingSquareLogoDark', 
               'Set-MgOrganizationMobileDeviceManagementAuthority', 
               'Test-MgContactProperty', 'Test-MgContractProperty', 
               'Test-MgDeviceProperty', 'Test-MgDirectoryDeletedItemProperty', 
               'Test-MgDirectoryRoleProperty', 
               'Test-MgDirectoryRoleTemplateProperty', 
               'Test-MgOrganizationProperty', 'Update-MgContact', 
               'Update-MgContract', 'Update-MgDevice', 'Update-MgDeviceByDeviceId', 
               'Update-MgDeviceExtension', 'Update-MgDirectory', 
               'Update-MgDirectoryAdministrativeUnit', 
               'Update-MgDirectoryAdministrativeUnitExtension', 
               'Update-MgDirectoryAdministrativeUnitScopedRoleMember', 
               'Update-MgDirectoryAttributeSet', 
               'Update-MgDirectoryCustomSecurityAttributeDefinition', 
               'Update-MgDirectoryCustomSecurityAttributeDefinitionAllowedValue', 
               'Update-MgDirectoryDeletedItem', 
               'Update-MgDirectoryFederationConfiguration', 
               'Update-MgDirectoryOnPremiseSynchronization', 
               'Update-MgDirectoryRole', 'Update-MgDirectoryRoleByRoleTemplateId', 
               'Update-MgDirectoryRoleScopedMember', 
               'Update-MgDirectoryRoleTemplate', 'Update-MgDomain', 
               'Update-MgDomainFederationConfiguration', 
               'Update-MgDomainServiceConfigurationRecord', 
               'Update-MgDomainVerificationDnsRecord', 'Update-MgOrganization', 
               'Update-MgOrganizationBranding', 
               'Update-MgOrganizationBrandingLocalization', 
               'Update-MgOrganizationExtension', 'Update-MgSubscribedSku', 
               'Update-MgUserScopedRoleMemberOf'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Get-MgDirectoryDeletedAdministrativeUnit', 
               'Get-MgDirectoryDeletedApplication', 'Get-MgDirectoryDeletedDevice', 
               'Get-MgDirectoryDeletedGroup', 
               'Get-MgDirectoryDeletedServicePrincipal', 
               'Get-MgDirectoryDeletedUser'

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
# MIIoKgYJKoZIhvcNAQcCoIIoGzCCKBcCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBRrjc92FChVk+/
# eb7zaDJUq+l8SsmFVpbBR0CjP0XnvqCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# /Xmfwb1tbWrJUnMTDXpQzTGCGgowghoGAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMw
# EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN
# aWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNp
# Z25pbmcgUENBIDIwMTECEzMAAANOtTx6wYRv6ysAAAAAA04wDQYJYIZIAWUDBAIB
# BQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEO
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIAfGZdpEjx63wGrxoXcFlhJa
# Rfu/XO8tjqN4tr54cjMGMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAi2anqExWJzTYMCYqHi5R+kIK+SrYL7XXveABhSPW6woE8ZlwrkVkepqL
# 7w2f0adDZcsfUeM2B9ZLIlUad7xdMLyEvKKEd15+WSKtH/1ZgBy17mwmsVahY/mB
# /AkQp3CD9vj4eqSX3WpMYGnKtX/Tn52JziTS10+7QPIvwTUituKFWDk7P768P5bP
# 1xL+aIF3Y2Y+p6shSj5S0H+PcFXVSxRygHx5i1UJJE1NwHBWiw6I8iIciP7z7RY+
# w2fGs1h6Z85ikT8gNuRqytQLzwPp3fYM2F0inVNJKPj4cSFncMX0PIq9Iy35zIf/
# qqwDKBHgc6VZCZz9KC/I0PeBjDSw5KGCF5QwgheQBgorBgEEAYI3AwMBMYIXgDCC
# F3wGCSqGSIb3DQEHAqCCF20wghdpAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFSBgsq
# hkiG9w0BCRABBKCCAUEEggE9MIIBOQIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCDeMxRrbckYEy1+7IwV/NGbgiZw2/87E2kPbbCW/xJubwIGZNT78G1W
# GBMyMDIzMDgyOTE2MzQyMy4zNzdaMASAAgH0oIHRpIHOMIHLMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046OTYwMC0w
# NUUwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wg
# ghHqMIIHIDCCBQigAwIBAgITMwAAAdj8SzOlHdiFFQABAAAB2DANBgkqhkiG9w0B
# AQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMzA1MjUxOTEy
# NDBaFw0yNDAyMDExOTEyNDBaMIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25z
# MScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046OTYwMC0wNUUwLUQ5NDcxJTAjBgNV
# BAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQDNeOsp0fXgAz7GUF0N+/0EHcQFri6wliTbmQNmFm8D
# i0CeQ8n4bd2td5tbtzTsEk7dY2/nmWY9kqEvavbdYRbNc+Esv8Nfv6MMImH9tCr5
# Kxs254MQ0jmpRucrm3uHW421Cfva0hNQEKN1NS0rad1U/ZOme+V/QeSdWKofCThx
# f/fsTeR41WbqUNAJN/ml3sbOH8aLhXyTHG7sVt/WUSLpT0fLlNXYGRXzavJ1qUOe
# Pzyj86hiKyzQJLTjKr7GpTGFySiIcMW/nyK6NK7Rjfy1ofLdRvvtHIdJvpmPSze3
# CH/PYFU21TqhIhZ1+AS7RlDo18MSDGPHpTCWwo7lgtY1pY6RvPIguF3rbdtvhoyj
# n5mPbs5pgjGO83odBNP7IlKAj4BbHUXeHit3Da2g7A4jicKrLMjo6sGeetJoeKoo
# j5iNTXbDwLKM9HlUdXZSz62ftCZVuK9FBgkAO9MRN2pqBnptBGfllm+21FLk6E3v
# VXMGHB5eOgFfAy84XlIieycQArIDsEm92KHIFOGOgZlWxe69leXvMHjYJlpo2VVM
# tLwXLd3tjS/173ouGMRaiLInLm4oIgqDtjUIqvwYQUh3RN6wwdF75nOmrpr8wRw1
# n/BKWQ5mhQxaMBqqvkbuu1sLeSMPv2PMZIddXPbiOvAxadqPkBcMPUBmrySYoLTx
# wwIDAQABo4IBSTCCAUUwHQYDVR0OBBYEFPbTj0x8PZBLYn0MZBI6nGh5qIlWMB8G
# A1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRYMFYwVKBSoFCG
# Tmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29mdCUy
# MFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEFBQcBAQRgMF4w
# XAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2Vy
# dHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwG
# A1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQD
# AgeAMA0GCSqGSIb3DQEBCwUAA4ICAQCunA6aSP48oJ1VD+SMF1/7SFiTGD6zyLC3
# Ju9HtLjqYYq1FJWUx10I5XqU0alcXTUFUoUIUPSvfeX/dX0MgofUG+cOXdokaHHS
# lo6PZIDXnUClpkRix9xCN37yFBpcwGLzEZlDKJb2gDq/FBGC8snTlBSEOBjV0eE8
# ICVUkOJzIAttExaeQWJ5SerUr63nq6X7PmQvk1OLFl3FJoW4+5zKqriY/PKGssOa
# A5ZjBZEyU+o7+P3icL/wZ0G3ymlT+Ea4h9f3q5aVdGVBdshYa/SehGmnUvGMA8j5
# Ct24inx+bVOuF/E/2LjIp+mEary5mOTrANVKLym2kW3eQxF/I9cj87xndiYH55Xf
# rWMk9bsRToxOpRb9EpbCB5cSyKNvxQ8D00qd2TndVEJFpgyBHQJS/XEK5poeJZ5q
# gmCFAj4VUPB/dPXHdTm1QXJI3cO7DRyPUZAYMwQ3KhPlM2hP2OfBJIr/VsDsh3sz
# LL2ZJuerjshhxYGVboMud9aNoRjlz1Mcn4iEota4tam24FxDyHrqFm6EUQu/pDYE
# DquuvQFGb5glIck4rKqBnRlrRoiRj0qdhO3nootVg/1SP0zTLC1RrxjuTEVe3PKr
# ETbtvcODoGh912Xrtf4wbMwpra8jYszzr3pf0905zzL8b8n8kuMBChBYfFds916K
# Tjc4TGNU9TCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZI
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
# 6Xu/OHBE0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggNN
# MIICNQIBATCB+aGB0aSBzjCByzELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEn
# MCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOjk2MDAtMDVFMC1EOTQ3MSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQBI
# p++xUJ+f85VrnbzdkRMSpBmvL6CBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBCwUAAgUA6JiGMzAiGA8yMDIzMDgyOTE0NTg1
# OVoYDzIwMjMwODMwMTQ1ODU5WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDomIYz
# AgEAMAcCAQACAhuWMAcCAQACAhO9MAoCBQDomdezAgEAMDYGCisGAQQBhFkKBAIx
# KDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZI
# hvcNAQELBQADggEBABOp8g02HfBXuUQDybpDAcJIMT7Nen9Q8GMjcIfmc//oEMpJ
# 5daJYSwxVzLEv0XNxvgRrXq+X/F6l1bDqKu8Fy/dRUYOPSjhzwTCpK9SSkj/eUeF
# 0pHPCxlYVpHMzwi0RsodTujJjwynAg4mMBMpyJprFCAEdgnNqWjuHh2Og9uxGp8M
# VH0WBOeO1Ls0hmO6H0/0UwqWr/n6ndtIp2lPBczQ5LAiDCe3ETnUF4YLINKxSlfP
# 7PUKbhF4128j7ZLambDHVEpGC+z2/lXzixzeQpwG/PKCUsHKfyD+HhB4dVapds86
# gw9SyY4ZOTUYAHd56KZadDmNQy/cXH2rHRdv44MxggQNMIIECQIBATCBkzB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAdj8SzOlHdiFFQABAAAB2DAN
# BglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8G
# CSqGSIb3DQEJBDEiBCBr5sVeeSWqaifr5HWfigDTlg8Xc4Gc1BAaap7iTdL75zCB
# +gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIDrjIX/8CZN3RTABMNt5u73Mi3o3
# fmvq2j8Sik+2s75UMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTACEzMAAAHY/EszpR3YhRUAAQAAAdgwIgQgnp9g25F3xMYAMlDaQOJsMw09Bk8Y
# 2kn1VzMdes5H/PYwDQYJKoZIhvcNAQELBQAEggIAbA6IUc4vn6DGsmvGZAcfz+WX
# 275NVniQ6EG5v/IbRXfFs532iuHyEbj8oAO4aH6B95pDj79pIlvWPYN+XVK6fAcA
# hg3G+yQ+2NtuPM/eGOhXMB4PyshU9thtIpnVLFHiUdpGPmz153Ut2Osb5UPjEfBq
# NUYD8CuaimvWvCKGONtYRUodTvjewxCwyCfei/KHnEXzDo02RTNXGez9Nx4cMCXt
# OD+MWh41R2U9soA2mxBkylMot42X+7FlV5SQh+TUl9OqF1ov1aHocD3TxCdFt+aH
# K42rwWNppNKZA65ihz7gomrE3DSxR4UDUtpp115R7562Knd01J71iy1LZvuRwMj6
# ItPYV57ZHSnthTG/jHwX4SKfvL3hUL6612d8LT4/lIa9A9YkwM/T9ZEaYWvxz0fa
# 5F2ZJ3KOnCjMuHtzc8dPpK3oq6AsENhwkmOCUGfw6oLqNHJraGx9IS8Hjg9tWSdk
# FUMjCPc6KqTH7oi+/0wPsDcM0kVtDxzSmShkUa9t3nPXYv6GGh9r8Ok5w86aFG3u
# SZqQSkk0L03/eFZJDxxYf4AoxeNIg/JmZ+0Ou+gfcjN8DEd7xdVmHBRkRje2BwIW
# Wl5pZ5ZdXSrwdtcY9Sg40H8u/FEODxrYdJUHHqn2ArCv181evGZ5jC8i38eqvogh
# NJBWvuOP1bIV8dJiigU=
# SIG # End signature block
