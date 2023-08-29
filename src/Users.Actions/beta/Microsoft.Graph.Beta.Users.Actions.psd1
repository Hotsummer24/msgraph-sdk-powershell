#
# Module manifest for module 'Microsoft.Graph.Beta.Users.Actions'
#
# Generated by: Microsoft Corporation
#
# Generated on: 8/29/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.Users.Actions.psm1'

# Version number of this module.
ModuleVersion = '2.5.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '1f5a9e1d-7b62-410d-8541-b56b33a7d63a'

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
RequiredAssemblies = './bin/Microsoft.Graph.Beta.Users.Actions.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Beta.Users.Actions.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-MgBetaUserChatMember', 
               'Add-MgBetaUserDriveListContentTypeCopy', 
               'Add-MgBetaUserDriveListContentTypeCopyFromContentTypeHub', 
               'Add-MgBetaUserPendingAccessReviewInstanceDecision', 
               'Clear-MgBetaUserAndBlockManagedApp', 
               'Clear-MgBetaUserChatMessageReaction', 
               'Clear-MgBetaUserChatMessageReplyReaction', 
               'Clear-MgBetaUserManagedAppRegistrationByAzureAdDeviceId', 
               'Clear-MgBetaUserManagedAppRegistrationByDeviceTag', 
               'Clear-MgBetaUserManagedDevice', 'Clear-MgBetaUserPresence', 
               'Clear-MgBetaUserPresenceUserPreferredPresence', 
               'Complete-MgBetaUserOutlookTask', 
               'Complete-MgBetaUserOutlookTaskFolderTask', 
               'Complete-MgBetaUserOutlookTaskGroupTaskFolderTask', 
               'Confirm-MgBetaUserChatPermissionGrantMemberGroup', 
               'Confirm-MgBetaUserChatPermissionGrantMemberObject', 
               'Confirm-MgBetaUserDeviceMemberGroup', 
               'Confirm-MgBetaUserDeviceMemberObject', 
               'Confirm-MgBetaUserInformationProtectionSignature', 
               'Confirm-MgBetaUserMemberGroup', 'Confirm-MgBetaUserMemberObject', 
               'Confirm-MgBetaUserPermissionGrantMemberGroup', 
               'Confirm-MgBetaUserPermissionGrantMemberObject', 
               'Copy-MgBetaUserDriveItem', 
               'Copy-MgBetaUserDriveListContentTypeToDefaultContentLocation', 
               'Copy-MgBetaUserDriveRoot', 'Copy-MgBetaUserMailFolder', 
               'Copy-MgBetaUserMailFolderChildFolder', 
               'Copy-MgBetaUserMailFolderChildFolderMessage', 
               'Copy-MgBetaUserMailFolderMessage', 'Copy-MgBetaUserMessage', 
               'Copy-MgBetaUserOnenoteNotebook', 
               'Copy-MgBetaUserOnenotePageToSection', 
               'Copy-MgBetaUserOnenoteSectionToNotebook', 
               'Copy-MgBetaUserOnenoteSectionToSectionGroup', 
               'Disable-MgBetaUserAuthenticationMethodSmsSignIn', 
               'Disable-MgBetaUserManagedDevice', 
               'Disable-MgBetaUserManagedDeviceLostMode', 
               'Enable-MgBetaUserAuthenticationMethodSmsSignIn', 
               'Enable-MgBetaUserManagedDeviceLostMode', 
               'Export-MgBetaUserPersonalData', 'Find-MgBetaUserManagedDevice', 
               'Find-MgBetaUserMeetingTime', 'Get-MgBetaUserById', 
               'Get-MgBetaUserCalendarSchedule', 
               'Get-MgBetaUserChatPermissionGrantById', 
               'Get-MgBetaUserChatPermissionGrantMemberGroup', 
               'Get-MgBetaUserChatPermissionGrantMemberObject', 
               'Get-MgBetaUserChatPermissionGrantUserOwnedObject', 
               'Get-MgBetaUserDefaultCalendarSchedule', 'Get-MgBetaUserDeviceById', 
               'Get-MgBetaUserDeviceMemberGroup', 
               'Get-MgBetaUserDeviceMemberObject', 
               'Get-MgBetaUserDeviceUserOwnedObject', 
               'Get-MgBetaUserJoinedGroupById', 
               'Get-MgBetaUserJoinedGroupUserOwnedObject', 'Get-MgBetaUserMailTip', 
               'Get-MgBetaUserMemberGroup', 'Get-MgBetaUserMemberObject', 
               'Get-MgBetaUserOnenoteNotebookFromWebUrl', 
               'Get-MgBetaUserOwnedObjectByType', 
               'Get-MgBetaUserPermissionGrantById', 
               'Get-MgBetaUserPermissionGrantMemberGroup', 
               'Get-MgBetaUserPermissionGrantMemberObject', 
               'Get-MgBetaUserPermissionGrantUserOwnedObject', 
               'Grant-MgBetaUserDriveItemPermission', 
               'Grant-MgBetaUserDriveRootPermission', 'Hide-MgBetaUserChatForUser', 
               'Initialize-MgBetaUserManagedDeviceEsim', 
               'Invoke-MgBetaAcceptUserEvent', 
               'Invoke-MgBetaAcceptUserEventInstance', 
               'Invoke-MgBetaAcceptUserEventInstanceTentatively', 
               'Invoke-MgBetaAcceptUserEventTentatively', 
               'Invoke-MgBetaAcceptUserPendingAccessReviewInstanceRecommendation', 
               'Invoke-MgBetaBatchUserPendingAccessReviewInstanceRecordDecision', 
               'Invoke-MgBetaBufferUserInformationProtectionDecrypt', 
               'Invoke-MgBetaBufferUserInformationProtectionEncrypt', 
               'Invoke-MgBetaBulkReprovisionUserManagedDeviceCloudPc', 
               'Invoke-MgBetaBulkRestoreUserManagedDeviceCloudPc', 
               'Invoke-MgBetaBulkUserCloudPcResize', 
               'Invoke-MgBetaBulkUserManagedDeviceSetCloudPcReviewStatus', 
               'Invoke-MgBetaCheckinUserDriveItem', 
               'Invoke-MgBetaCheckinUserDriveRoot', 
               'Invoke-MgBetaCheckoutUserDriveItem', 
               'Invoke-MgBetaCheckoutUserDriveRoot', 
               'Invoke-MgBetaCleanUserManagedDeviceWindowsDevice', 
               'Invoke-MgBetaCreateOrGetUserOnlineMeeting', 
               'Invoke-MgBetaDeclineUserEvent', 
               'Invoke-MgBetaDeclineUserEventInstance', 
               'Invoke-MgBetaDeprovisionUserManagedDevice', 
               'Invoke-MgBetaDismissUserEventInstanceReminder', 
               'Invoke-MgBetaDismissUserEventReminder', 
               'Invoke-MgBetaDownloadUserManagedDeviceAppDiagnostic', 
               'Invoke-MgBetaDownUserManagedDeviceShut', 
               'Invoke-MgBetaEnrollUserManagedDeviceNowAction', 
               'Invoke-MgBetaExecuteUserManagedDeviceAction', 
               'Invoke-MgBetaExtractUserDriveItemSensitivityLabel', 
               'Invoke-MgBetaExtractUserDriveRootSensitivityLabel', 
               'Invoke-MgBetaExtractUserInformationProtectionPolicyLabel', 
               'Invoke-MgBetaExtractUserSecurityInformationProtectionSensitivityLabelContentLabel', 
               'Invoke-MgBetaFollowUserDriveItem', 
               'Invoke-MgBetaFollowUserDriveRoot', 'Invoke-MgBetaForwardUserEvent', 
               'Invoke-MgBetaForwardUserEventInstance', 
               'Invoke-MgBetaForwardUserMailFolderChildFolderMessage', 
               'Invoke-MgBetaForwardUserMailFolderMessage', 
               'Invoke-MgBetaForwardUserMessage', 'Invoke-MgBetaGraphUserChat', 
               'Invoke-MgBetaHasUserDeviceEnrollmentConfigurationPayloadLink', 
               'Invoke-MgBetaInitiateUserManagedDeviceMobileDeviceManagementKeyRecovery', 
               'Invoke-MgBetaInitiateUserManagedDeviceOnDemandProactiveRemediation', 
               'Invoke-MgBetaInvalidateAllUserRefreshToken', 
               'Invoke-MgBetaInviteUserDriveItem', 
               'Invoke-MgBetaInviteUserDriveRoot', 'Invoke-MgBetaLicenseUser', 
               'Invoke-MgBetaLogoutUserManagedDeviceSharedAppleDeviceActiveUser', 
               'Invoke-MgBetaMarkUserChatReadForUser', 
               'Invoke-MgBetaMarkUserChatUnreadForUser', 
               'Invoke-MgBetaMarkUserMailFolderChildFolderMessageAsJunk', 
               'Invoke-MgBetaMarkUserMailFolderChildFolderMessageAsNotJunk', 
               'Invoke-MgBetaMarkUserMailFolderMessageAsJunk', 
               'Invoke-MgBetaMarkUserMailFolderMessageAsNotJunk', 
               'Invoke-MgBetaMarkUserMessageAsJunk', 
               'Invoke-MgBetaMarkUserMessageAsNotJunk', 
               'Invoke-MgBetaOverrideUserManagedDeviceComplianceState', 
               'Invoke-MgBetaPlayUserManagedDeviceLostModeSound', 
               'Invoke-MgBetaPreviewUserDriveItem', 
               'Invoke-MgBetaPreviewUserDriveRoot', 
               'Invoke-MgBetaReauthorizeUserDriveItemSubscription', 
               'Invoke-MgBetaReauthorizeUserDriveListSubscription', 
               'Invoke-MgBetaReauthorizeUserDriveRootSubscription', 
               'Invoke-MgBetaRecordUserPendingAccessReviewInstanceDecision', 
               'Invoke-MgBetaReenableUserManagedDevice', 
               'Invoke-MgBetaReplyAllUserMailFolderChildFolderMessage', 
               'Invoke-MgBetaReplyAllUserMailFolderMessage', 
               'Invoke-MgBetaReplyAllUserMessage', 
               'Invoke-MgBetaReplyUserMailFolderChildFolderMessage', 
               'Invoke-MgBetaReplyUserMailFolderMessage', 
               'Invoke-MgBetaReplyUserMessage', 
               'Invoke-MgBetaReprovisionUserCloudPc', 
               'Invoke-MgBetaReprovisionUserManagedDeviceCloudPc', 
               'Invoke-MgBetaRetireUserManagedDevice', 
               'Invoke-MgBetaRetryUserCloudPcPartnerAgentInstallation', 
               'Invoke-MgBetaRetryUserServiceProvisioning', 
               'Invoke-MgBetaRotateUserManagedDeviceBitLockerKey', 
               'Invoke-MgBetaRotateUserManagedDeviceFileVaultKey', 
               'Invoke-MgBetaRotateUserManagedDeviceLocalAdminPassword', 
               'Invoke-MgBetaScanUserManagedDeviceWindowsDefender', 
               'Invoke-MgBetaSignUserInformationProtectionDigest', 
               'Invoke-MgBetaSnoozeUserEventInstanceReminder', 
               'Invoke-MgBetaSnoozeUserEventReminder', 
               'Invoke-MgBetaSoftUserChatMessageDelete', 
               'Invoke-MgBetaSoftUserChatMessageReplyDelete', 
               'Invoke-MgBetaTranslateUserExchangeId', 
               'Invoke-MgBetaTroubleshootUserCloudPc', 
               'Invoke-MgBetaUnfollowUserDriveItem', 
               'Invoke-MgBetaUnfollowUserDriveRoot', 
               'Invoke-MgBetaUnsubscribeUserMailFolderChildFolderMessage', 
               'Invoke-MgBetaUnsubscribeUserMailFolderMessage', 
               'Invoke-MgBetaUnsubscribeUserMessage', 
               'Join-MgBetaUserDriveListContentTypeWithHubSite', 
               'Lock-MgBetaUserManagedDeviceRemote', 'Move-MgBetaUserMailFolder', 
               'Move-MgBetaUserMailFolderChildFolder', 
               'Move-MgBetaUserMailFolderChildFolderMessage', 
               'Move-MgBetaUserMailFolderMessage', 
               'Move-MgBetaUserManagedDeviceToOu', 'Move-MgBetaUserMessage', 
               'New-MgBetaUserDeviceEnrollmentConfigurationEnrollmentNotificationConfiguration', 
               'New-MgBetaUserDriveItemLink', 
               'New-MgBetaUserDriveItemListItemLink', 
               'New-MgBetaUserDriveItemUploadSession', 
               'New-MgBetaUserDriveListItemLink', 'New-MgBetaUserDriveRootLink', 
               'New-MgBetaUserDriveRootListItemLink', 
               'New-MgBetaUserDriveRootUploadSession', 
               'New-MgBetaUserEventAttachmentUploadSession', 
               'New-MgBetaUserEventInstanceAttachmentUploadSession', 
               'New-MgBetaUserMailFolderChildFolderMessageAttachmentUploadSession', 
               'New-MgBetaUserMailFolderChildFolderMessageForward', 
               'New-MgBetaUserMailFolderChildFolderMessageReply', 
               'New-MgBetaUserMailFolderChildFolderMessageReplyAll', 
               'New-MgBetaUserMailFolderMessageAttachmentUploadSession', 
               'New-MgBetaUserMailFolderMessageForward', 
               'New-MgBetaUserMailFolderMessageReply', 
               'New-MgBetaUserMailFolderMessageReplyAll', 
               'New-MgBetaUserManagedDeviceLogCollectionRequest', 
               'New-MgBetaUserManagedDeviceLogCollectionResponseDownloadUrl', 
               'New-MgBetaUserManagedDeviceWindowsDefenderUpdateSignature', 
               'New-MgBetaUserMessageAttachmentUploadSession', 
               'New-MgBetaUserMessageForward', 'New-MgBetaUserMessageReply', 
               'New-MgBetaUserMessageReplyAll', 
               'New-MgBetaUserMobileAppTroubleshootingEventAppLogCollectionRequestDownloadUrl', 
               'New-MgBetaUserOutlookTaskAttachmentUploadSession', 
               'New-MgBetaUserOutlookTaskFolderTaskAttachmentUploadSession', 
               'New-MgBetaUserOutlookTaskGroupTaskFolderTaskAttachmentUploadSession', 
               'New-MgBetaUserTodoListTaskAttachmentUploadSession', 
               'Publish-MgBetaUserDriveListContentType', 
               'Remove-MgBetaAllUserDeviceFromManagement', 
               'Remove-MgBetaUserDriveItemPermanent', 
               'Remove-MgBetaUserDriveRootPermanent', 
               'Remove-MgBetaUserManagedDeviceFirmwareConfigurationInterfaceManagement', 
               'Remove-MgBetaUserManagedDeviceUserFromSharedAppleDevice', 
               'Rename-MgBetaUserCloudPc', 
               'Rename-MgBetaUserCloudPcUserAccountType', 
               'Request-MgBetaUserManagedDeviceRemoteAssistance', 
               'Reset-MgBetaUserAuthenticationMethodPassword', 
               'Reset-MgBetaUserManagedDevicePasscode', 
               'Reset-MgBetaUserPendingAccessReviewInstanceDecision', 
               'Resize-MgBetaUserManagedDeviceCloudPc', 
               'Restart-MgBetaUserCloudPc', 'Restart-MgBetaUserManagedDeviceNow', 
               'Restore-MgBetaUserCloudPc', 'Restore-MgBetaUserDriveItem', 
               'Restore-MgBetaUserDriveItemListItemDocumentSetVersion', 
               'Restore-MgBetaUserDriveItemListItemVersion', 
               'Restore-MgBetaUserDriveItemVersion', 
               'Restore-MgBetaUserDriveListItemDocumentSetVersion', 
               'Restore-MgBetaUserDriveListItemVersion', 
               'Restore-MgBetaUserDriveRoot', 
               'Restore-MgBetaUserDriveRootListItemDocumentSetVersion', 
               'Restore-MgBetaUserDriveRootListItemVersion', 
               'Restore-MgBetaUserDriveRootVersion', 
               'Restore-MgBetaUserManagedDeviceCloudPc', 
               'Restore-MgBetaUserManagedDevicePasscode', 
               'Restore-MgBetaUserPermissionGrant', 
               'Revoke-MgBetaUserDriveItemPermissionGrant', 
               'Revoke-MgBetaUserDriveRootPermissionGrant', 
               'Revoke-MgBetaUserManagedDeviceAppleVppLicense', 
               'Revoke-MgBetaUserSignInSession', 
               'Send-MgBetaUserChatActivityNotification', 'Send-MgBetaUserMail', 
               'Send-MgBetaUserMailFolderChildFolderMessage', 
               'Send-MgBetaUserMailFolderMessage', 
               'Send-MgBetaUserManagedDeviceCustomNotificationToCompanyPortal', 
               'Send-MgBetaUserMessage', 
               'Send-MgBetaUserPendingAccessReviewInstanceReminder', 
               'Send-MgBetaUserTeamworkActivityNotification', 
               'Set-MgBetaUserChatMessageReaction', 
               'Set-MgBetaUserChatMessageReplyReaction', 
               'Set-MgBetaUserDeviceEnrollmentConfiguration', 
               'Set-MgBetaUserDeviceEnrollmentConfigurationPriority', 
               'Set-MgBetaUserDriveItemSensitivityLabel', 
               'Set-MgBetaUserDriveRootSensitivityLabel', 'Set-MgBetaUserLicense', 
               'Set-MgBetaUserManagedDeviceCloudPcReviewStatus', 
               'Set-MgBetaUserManagedDeviceName', 'Set-MgBetaUserPresence', 
               'Set-MgBetaUserPresenceStatusMessage', 
               'Set-MgBetaUserPresenceUserPreferredPresence', 
               'Skip-MgBetaUserManagedDeviceActivationLock', 
               'Start-MgBetaUserCloudPc', 
               'Start-MgBetaUserManagedDeviceConfigurationManagerAction', 
               'Stop-MgBetaUserCloudPc', 'Stop-MgBetaUserCloudPcGracePeriod', 
               'Stop-MgBetaUserEvent', 'Stop-MgBetaUserEventInstance', 
               'Stop-MgBetaUserPendingAccessReviewInstance', 
               'Stop-MgBetaUserPendingAccessReviewInstanceApplyDecision', 
               'Stop-MgBetaUserPendingAccessReviewInstanceStage', 
               'Sync-MgBetaUserManagedDevice', 
               'Test-MgBetaUserChatPermissionGrantProperty', 
               'Test-MgBetaUserCloudPcBulkResize', 'Test-MgBetaUserDeviceProperty', 
               'Test-MgBetaUserDriveItemPermission', 
               'Test-MgBetaUserDriveRootPermission', 
               'Test-MgBetaUserInformationProtectionDataLossPreventionPolicy', 
               'Test-MgBetaUserInformationProtectionPolicyLabelApplication', 
               'Test-MgBetaUserInformationProtectionPolicyLabelClassificationResult', 
               'Test-MgBetaUserInformationProtectionPolicyLabelRemoval', 
               'Test-MgBetaUserInformationProtectionSensitivityLabel', 
               'Test-MgBetaUserInformationProtectionSensitivityLabelSublabel', 
               'Test-MgBetaUserJoinedGroupDynamicMembership', 
               'Test-MgBetaUserJoinedGroupProperty', 'Test-MgBetaUserPassword', 
               'Test-MgBetaUserPermissionGrantProperty', 'Test-MgBetaUserProperty', 
               'Test-MgBetaUserSecurityInformationProtectionSensitivityLabelApplication', 
               'Test-MgBetaUserSecurityInformationProtectionSensitivityLabelClassificationResult', 
               'Test-MgBetaUserSecurityInformationProtectionSensitivityLabelRemoval', 
               'Unblock-MgBetaUserManagedApp', 
               'Undo-MgBetaUserChatMessageReplySoftDelete', 
               'Undo-MgBetaUserChatMessageSoftDelete', 
               'Unpublish-MgBetaUserDriveListContentType', 
               'Update-MgBetaUserChatInstalledApp', 
               'Update-MgBetaUserManagedDeviceWindowsDeviceAccount', 
               'Update-MgBetaUserOnenotePageContent', 'Update-MgBetaUserPassword'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Invoke-MgBetaInvalidateUserRefreshToken', 
               'Remove-MgBetaUserDeviceFromManagement'

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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD20VJHmmU0PgpE
# OveCGp2fOch7p+d4pcVvXHpQutpUZaCCDXYwggX0MIID3KADAgECAhMzAAADTrU8
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
# MAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIAMrsOSfU37lgxaIkMkc463/
# Mme1I3m6Z93+VVIsVdmoMEIGCisGAQQBgjcCAQwxNDAyoBSAEgBNAGkAYwByAG8A
# cwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcNAQEB
# BQAEggEAobe37iQMLQHoC8Wmn2xaZ+V+TFqrx4OQZ4Xf7w3LSCqAfAuo1fsLpeZi
# Aaxeu0BR8H94L/V/m0FfcFgrloRAfTfbkMCMLKjDZGj9AtyPskFxktVsa/jxPgDR
# RZa2ZziGAIiyx2zBgrvZonAF8OXi52Q43T6pr9nQiX/auUmz7wMU7HhKjTUxwjn1
# 6BM/Pwze+WzwmNGNYPWqX/1Y/lBg4yXHN8TaXtiPdz3A7VDNba3rUbhrGC8I4oHL
# QDOvbWrh9DdSGRbEJ6Ww/br6JJJ75OFqPFg2sDathCboiNrIzoLsC5+XjBNAXA62
# HLyEAE2ULEYp4KceZpMLyN7dsDTNFqGCF5QwgheQBgorBgEEAYI3AwMBMYIXgDCC
# F3wGCSqGSIb3DQEHAqCCF20wghdpAgEDMQ8wDQYJYIZIAWUDBAIBBQAwggFSBgsq
# hkiG9w0BCRABBKCCAUEEggE9MIIBOQIBAQYKKwYBBAGEWQoDATAxMA0GCWCGSAFl
# AwQCAQUABCBZ7A71kTlQIqTVIBjBgtWAjELPJ8Tfoyxn7PAGoVgqZAIGZNTJDt4/
# GBMyMDIzMDgyOTE2MzQyMy42NTVaMASAAgH0oIHRpIHOMIHLMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1l
# cmljYSBPcGVyYXRpb25zMScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046OEQwMC0w
# NUUwLUQ5NDcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2Wg
# ghHqMIIHIDCCBQigAwIBAgITMwAAAc1VByrnysGZHQABAAABzTANBgkqhkiG9w0B
# AQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYD
# VQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0yMzA1MjUxOTEy
# MDVaFw0yNDAyMDExOTEyMDVaMIHLMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25z
# MScwJQYDVQQLEx5uU2hpZWxkIFRTUyBFU046OEQwMC0wNUUwLUQ5NDcxJTAjBgNV
# BAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQDTOCLVS2jmEWOqxzygW7s6YLmm29pjvA+Ch6VL7HlT
# L8yUt3Z0KIzTa2O/Hvr/aJza1qEVklq7NPiOrpBAIz657LVxwEc4BxJiv6B68a8D
# QiF6WAFFNaK3WHi7TfxRnqLohgNz7vZPylZQX795r8MQvX56uwjj/R4hXnR7Na4L
# lu4mWsml/wp6VJqCuxZnu9jX4qaUxngcrfFT7+zvlXClwLah2n0eGKna1dOjOgyK
# 00jYq5vtzr5NZ+qVxqaw9DmEsj9vfqYkfQZry2JO5wmgXX79Ox7PLMUfqT4+8w5J
# kdSMoX32b1D6cDKWRUv5qjiYh4o/a9ehE/KAkUWlSPbbDR/aGnPJLAGPy2qA97YC
# BeeIJjRKURgdPlhE5O46kOju8nYJnIvxbuC2Qp2jxwc6rD9M6Pvc8sZIcQ10YKZV
# YKs94YPSlkhwXwttbRY+jZnQiDm2ZFjH8SPe1I6ERcfeYX1zCYjEzdwWcm+fFZml
# JA9HQW7ZJAmOECONtfK28EREEE5yzq+T3QMVPhiEfEhgcYsh0DeoWiYGsDiKEuS+
# FElMMyT456+U2ZRa2hbRQ97QcbvaAd6OVQLp3TQqNEu0es5Zq0wg2CADf+QKQR/Y
# 6+fGgk9qJNJW3Mu771KthuPlNfKss0B1zh0xa1yN4qC3zoE9Uq6T8r7G3/OtSFms
# 4wIDAQABo4IBSTCCAUUwHQYDVR0OBBYEFKGT+aY2aZrBAJVIZh5kicokfNWaMB8G
# A1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRYMFYwVKBSoFCG
# Tmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY3Jvc29mdCUy
# MFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEFBQcBAQRgMF4w
# XAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY2Vy
# dHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwG
# A1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQD
# AgeAMA0GCSqGSIb3DQEBCwUAA4ICAQBSqG3ppKIU+i/EMwwtotoxnKfw0SX/3T16
# EPbjwsAImWOZ5nLAbatopl8zFY841gb5eiL1j81h4DiEiXt+BJgHIA2LIhKhSscd
# 79oMbr631DiEqf9X5LZR3V3KIYstU3K7f5Dk7tbobuHu+6fYM/gOx44sgRU7YQ+Y
# TYHvv8k4mMnuiahJRlU/F2vavcHU5uhXi078K4nSRAPnWyX7gVi6iVMBBUF4823o
# PFznEcHup7VNGRtGe1xvnlMd1CuyxctM8d/oqyTsxwlJAM5F/lDxnEWoSzAkad1n
# WvkaAeMV7+39IpXhuf9G3xbffKiyBnj3cQeiA4SxSwCdnx00RBlXS6r9tGDa/o9R
# S01FOABzKkP5CBDpm4wpKdIU74KtBH2sE5QYYn7liYWZr2f/U+ghTmdOEOPkXEcX
# 81H4dRJU28Tj/gUZdwL81xah8Kn+cB7vM/Hs3/J8tF13ZPP+8NtX3vu4NrchHDJY
# gjOi+1JuSf+4jpF/pEEPXp9AusizmSmkBK4iVT7NwVtRnS1ts8qAGHGPg2HPa4b2
# u9meueUoqNVtMhbumI1y+d9ZkThNXBXz2aItT2C99DM3T3qYqAUmvKUryVSpMLVp
# se4je5WN6VVlCDFKWFRH202YxEVWsZ5baN9CaqCbCS0Ea7s9OFLaEM5fNn9m5s69
# lD/ekcW2qTCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZI
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
# MCUGA1UECxMeblNoaWVsZCBUU1MgRVNOOjhEMDAtMDVFMC1EOTQ3MSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQBo
# qfem2KKzuRZjISYifGolVOdyBKCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBCwUAAgUA6JhTTDAiGA8yMDIzMDgyOTExMjE0
# OFoYDzIwMjMwODMwMTEyMTQ4WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDomFNM
# AgEAMAcCAQACAhFXMAcCAQACAhINMAoCBQDomaTMAgEAMDYGCisGAQQBhFkKBAIx
# KDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZI
# hvcNAQELBQADggEBACVPcThC06wzJ7E0xxy+Kst46cSC1spKKp5/LBgy+520ieHv
# 3OZ6YvCf5N85cfspP80OF1k8YOzwfqFP0resgGOqa8ZKlBS8jMXwu5r0hAj2Hb/S
# o/fwwh0Bs77IdaCIqP1JW1Um9rx+JbvlSQAj6Xeb0hLQPsYZCxgFG394c/5KPamG
# 5PWVMjSuHXEz4pW+OGbUjajbRcVY7K0uNo6VVW5Yh28j9dWWnxZoQbDDVp/rPYUs
# G+ERGzZljYBRU8a8assAzjt/7N+zkPAsPHoVqSL9d9o6d41rchIj/ZOrAxHVWsi3
# nZ70LG59ozKYWpBwZIENISGsRm3YDKWSlP6LrG0xggQNMIIECQIBATCBkzB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAc1VByrnysGZHQABAAABzTAN
# BglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8G
# CSqGSIb3DQEJBDEiBCCK/7cJCqAQFp0rrHicr7yrpp0d0Wzauxx/3SMqkdiKWDCB
# +gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIOJmpfitVr1PZGgvTEdTpStUc6GN
# h7LNroQBKwpURpkKMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTACEzMAAAHNVQcq58rBmR0AAQAAAc0wIgQgUY+huqfromHgpJ67s/8v82X2etcj
# FQauZ3O9imK8zS0wDQYJKoZIhvcNAQELBQAEggIAjcOhpCcQUQv9qRK0imV6AlUp
# UupyV5d/F4aJ3gqdEKWI3+pZCGbz6tW1ANu6S+71c1ZCYJRA/HBA/4ltYNaIj/qQ
# WImYSxnHLJac+UHltvTOpLYadDKEF+PxwIohF001BPH8FGIsnszvDah3DaDeBQR8
# GpnElc33tDNb9gh0XiIhUX//I4ypQppCLBwZJjumyc1ZfSBS8zrgranEmaU6UZqm
# UTJ//gIo7LPGGm6K7Et6lnF8DviM376goyYHdBTj1rO5WE+hFM1FpjD9eHeYxJeo
# 8gBZWsRv6cajYi4gHm0Q1s4yKpgwHt0LQm9qnWrijnpa5cjs4Tswt7Smb/E6w919
# MqmLybZA3+S18vgmyd2P6cDuOQ2pKqRjkfQT7rl5N5P7pg3okc0dXJ9IK/gL75/g
# ePD7A/0eFNNny33LNBisulxRVRx15QUlV/RJnFDGZ4cZagy13DtnrpqkmRBF5svV
# HJ2K1VYOmjospS2YYt8gva46jH9CpawhYTRVDmn/3y3e448lmBhMGZOQi9FcL5fm
# D2kYyAg+czy7odbxQZEcWwxm6jKKf6CxhRJcnAnB43w8VlPZUsHhl3GubM6xi2VV
# zs9j7fhfDTbUtqwtzqY8NMMnvf75mpxs7ehfjZxOytlIAI2bmgvxOoYqyy844wr0
# IKX6+p4Fcb5YFcOt8JA=
# SIG # End signature block
