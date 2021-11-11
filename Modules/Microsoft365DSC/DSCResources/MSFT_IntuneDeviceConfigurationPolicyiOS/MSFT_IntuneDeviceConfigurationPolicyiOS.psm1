function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.Boolean]
        $AccountBlockModification,

        [Parameter()]
        [System.Boolean]
        $ActivationLockAllowWhenSupervised,

        [Parameter()]
        [System.Boolean]
        $AirDropBlocked,

        [Parameter()]
        [System.Boolean]
        $AirDropForceUnmanagedDropTarget,

        [Parameter()]
        [System.Boolean]
        $AirPlayForcePairingPasswordForOutgoingRequests,

        [Parameter()]
        [System.Boolean]
        $AppleWatchBlockPairing,

        [Parameter()]
        [System.Boolean]
        $AppleWatchForceWristDetection,

        [Parameter()]
        [System.Boolean]
        $AppleNewsBlocked,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AppsSingleAppModeList,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AppsVisibilityList,

        [Parameter()]
        [System.String]
        [ValidateSet('None', 'AppsInListCompliant','AppsNotInListCompliant')]
        $AppsVisibilityListType,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockAutomaticDownloads,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlocked,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockInAppPurchases,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockUIAppInstallation,

        [Parameter()]
        [System.Boolean]
        $AppStoreRequirePassword,

        [Parameter()]
        [System.Boolean]
        $AutoFillForceAuthentication,

        [Parameter()]
        [System.Boolean]
        $BluetoothBlockModification,

        [Parameter()]
        [System.Boolean]
        $CameraBlocked,

        [Parameter()]
        [System.Boolean]
        $CellularBlockDataRoaming,

        [Parameter()]
        [System.Boolean]
        $CellularBlockGlobalBackgroundFetchWhileRoaming,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPerAppDataModification,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPersonalHotspot,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPlanModification,

        [Parameter()]
        [System.Boolean]
        $CellularBlockVoiceRoaming,

        [Parameter()]
        [System.Boolean]
        $CertificatesBlockUntrustedTlsCertificates,

        [Parameter()]
        [System.Boolean]
        $ClassroomAppBlockRemoteScreenObservation,

        [Parameter()]
        [System.Boolean]
        $ClassroomAppForceUnpromptedScreenObservation,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceAutomaticallyJoinClasses,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceUnpromptedAppAndDeviceLock,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $CompliantAppsList,

        [Parameter()]
        [System.String]
        [ValidateSet('None', 'AppsInListCompliant','AppsNotInListCompliant')]
        $CompliantAppListType,

        [Parameter()]
        [System.Boolean]
        $ConfigurationProfileBlockChanges,

        [Parameter()]
        [System.Boolean]
        $DefinitionLookupBlocked,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockEnableRestrictions,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockEraseContentAndSettings,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockNameModification,

        [Parameter()]
        [System.Boolean]
        $DiagnosticDataBlockSubmission,

        [Parameter()]
        [System.Boolean]
        $DiagnosticDataBlockSubmissionModification,

        [Parameter()]
        [System.Boolean]
        $DocumentsBlockManagedDocumentsInUnmanagedApps,

        [Parameter()]
        [System.Boolean]
        $DocumentsBlockUnmanagedDocumentsInManagedApps,

        [Parameter()]
        [System.String[]]
        $EmailInDomainSuffixes,

        [Parameter()]
        [System.Boolean]
        $EnterpriseAppBlockTrust,

        [Parameter()]
        [System.Boolean]
        $EnterpriseAppBlockTrustModification,

        [Parameter()]
        [System.Boolean]
        $FaceTimeBlocked,

        [Parameter()]
        [System.Boolean]
        $FindMyFriendsBlocked,

        [Parameter()]
        [System.Boolean]
        $GamingBlockGameCenterFriends,

        [Parameter()]
        [System.Boolean]
        $GamingBlockMultiplayer,

        [Parameter()]
        [System.Boolean]
        $GameCenterBlocked,

        [Parameter()]
        [System.Boolean]
        $HostPairingBlocked,

        [Parameter()]
        [System.Boolean]
        $iBooksStoreBlocked,

        [Parameter()]
        [System.Boolean]
        $iBooksStoreBlockErotica,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockActivityContinuation,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockBackup,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockDocumentSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockManagedAppsSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockPhotoLibrary,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockPhotoStreamSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockSharedPhotoStream,

        [Parameter()]
        [System.Boolean]
        $iCloudRequireEncryptedBackup,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockExplicitContent,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockMusicService,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockRadio,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockAutoCorrect,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockDictation,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockPredictive,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockShortcuts,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockSpellCheck,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAssistiveSpeak,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAssistiveTouchSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAutoLock,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockAutoLock,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowColorInversionSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowRingerSwitch,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockRingerSwitch,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowScreenRotation,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockScreenRotation,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowSleepButton,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockSleepButton,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowTouchscreen,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockTouchscreen,

        [Parameter()]
        [System.Boolean]
        $KioskModeEnableVoiceControl,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVoiceControlModification,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVoiceOverSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVolumeButtons,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockVolumeButtons,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowZoomSettings,

        [Parameter()]
        [System.String]
        $KioskModeAppStoreUrl,

        [Parameter()]
        [System.String]
        $KioskModeBuiltInAppId,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireAssistiveTouch,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireColorInversion,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireMonoAudio,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireVoiceOver,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireZoom,

        [Parameter()]
        [System.String]
        $KioskModeManagedAppId,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockControlCenter,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockNotificationView,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockPassbook,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockTodayView,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingAustralia,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingCanada,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingFrance,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingGermany,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingIreland,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingJapan,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingNewZealand,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingUnitedKingdom,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingUnitedStates,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $NetworkUsageRules,

        [Parameter()]
        [System.String]
        [ValidateSet('AllAllowed', 'AllBlocked','AgesAbove4','AgesAbove9','AgesAbove12','AgesAbove17')]
        $MediaContentRatingApps,

        [Parameter()]
        [System.Boolean]
        $MessagesBlocked,

        [Parameter()]
        [System.Boolean]
        $NotificationsBlockSettingsModification,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockFingerprintUnlock,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockModification,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockSimple,

        [Parameter()]
        [System.String]
        $PasscodeExpirationDays,

        [Parameter()]
        [System.Uint32]
        $PasscodeMinimumLength,

        [Parameter()]
        [System.String]
        $PasscodeMinutesOfInactivityBeforeLock,

        [Parameter()]
        [System.String]
        $PasscodeMinutesOfInactivityBeforeScreenTimeout,

        [Parameter()]
        [System.String]
        $PasscodeMinimumCharacterSetCount,

        [Parameter()]
        [System.String]
        $PasscodePreviousPasscodeBlockCount,

        [Parameter()]
        [System.String]
        $PasscodeSignInFailureCountBeforeWipe,

        [Parameter()]
        [System.String]
        [ValidateSet('DeviceDefault', 'Alphanumeric','Numeric')]
        $PasscodeRequiredType = "deviceDefault",

        [Parameter()]
        [System.Boolean]
        $PasscodeRequired,

        [Parameter()]
        [System.Boolean]
        $PodcastsBlocked,

        [Parameter()]
        [System.Boolean]
        $ProximityBlockSetupToNewDevice,

        [Parameter()]
        [System.Boolean]
        $SafariBlockAutofill,

        [Parameter()]
        [System.Boolean]
        $SafariBlockJavaScript,

        [Parameter()]
        [System.Boolean]
        $SafariBlockPopups,

        [Parameter()]
        [System.Boolean]
        $SafariBlocked,

        [Parameter()]
        [System.String]
        [ValidateSet('BrowserDefault', 'BlockAlways','AllowCurrentWebSite','AllowFromWebsitesVisited','AllowAlways')]
        $SafariCookieSettings,

        [Parameter()]
        [System.String[]]
        $SafariManagedDomains,

        [Parameter()]
        [System.String[]]
        $SafariPasswordAutoFillDomains,

        [Parameter()]
        [System.Boolean]
        $SafariRequireFraudWarning,

        [Parameter()]
        [System.Boolean]
        $ScreenCaptureBlocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlockedWhenLocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlockUserGeneratedContent,

        [Parameter()]
        [System.Boolean]
        $SiriRequireProfanityFilter,

        [Parameter()]
        [System.Uint32]
        $SoftwareUpdatesEnforcedDelayInDays,

        [Parameter()]
        [System.Boolean]
        $SoftwareUpdatesForceDelayed,

        [Parameter()]
        [System.Boolean]
        $SpotlightBlockInternetResults,

        [Parameter()]
        [System.Boolean]
        $VoiceDialingBlocked,

        [Parameter()]
        [System.Boolean]
        $WallpaperBlockModification,

        [Parameter()]
        [System.Boolean]
	    $WiFiConnectOnlyToConfiguredNetworks,

	    [Parameter()]
        [System.Boolean]
	    $ClassroomForceRequestPermissionToLeaveClasses,

        [Parameter()]
        [System.Boolean]
	    $KeychainBlockCloudSync,

	    [Parameter()]
        [System.Boolean]
	    $PkiBlockOTAUpdates,

        [Parameter()]
        [System.Boolean]
	    $PrivacyForceLimitAdTracking,

        [Parameter()]
        [System.Boolean]
	    $EnterpriseBookBlockBackup,

        [Parameter()]
        [System.Boolean]
	    $EnterpriseBookBlockMetadataSync,

	    [Parameter()]
        [System.Boolean]
	    $AirPrintBlocked,

        [Parameter()]
        [System.Boolean]
	    $AirPrintBlockCredentialsStorage,

        [Parameter()]
        [System.Boolean]
	    $AirPrintForceTrustedTLS,

        [Parameter()]
        [System.Boolean]
	    $AirPrintBlockiBeaconDiscovery,

        [Parameter()]
        [System.Boolean]
	    $FilesNetworkDriveAccessBlocked,

        [Parameter()]
        [System.Boolean]
	    $FilesUsbDriveAccessBlocked,

        [Parameter()]
        [System.Boolean]
	    $WifiPowerOnForced,

        [Parameter()]
        [System.Boolean]
	    $BlockSystemAppRemoval,

        [Parameter()]
        [System.Boolean]
	    $VpnBlockCreation,

        [Parameter()]
        [System.Boolean]
	    $AppRemovalBlocked,

        [Parameter()]
        [System.Boolean]
	    $UsbRestrictedModeBlocked,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockAutoFill,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockProximityRequests,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockAirDropSharing,

        [Parameter()]
        [System.Boolean]
	    $DateAndTimeForceSetAutomatically,

        [Parameter()]
        [System.Boolean]
	    $ContactsAllowManagedToUnmanagedWrite,

        [Parameter()]
        [System.Boolean]
	    $ContactsAllowUnmanagedToManagedRead,

        [Parameter()]
        [System.Boolean]
	    $CellularBlockPersonalHotspotModification,

        [Parameter()]
        [System.Boolean]
	    $ContinuousPathKeyboardBlocked,

        [Parameter()]
        [System.Boolean]
	    $FindMyDeviceInFindMyAppBlocked,

        [Parameter()]
        [System.Boolean]
	    $FindMyFriendsInFindMyAppBlocked,

        [Parameter()]
        [System.Boolean]
	    $ITunesBlocked,

        [Parameter()]
        [System.Boolean]
	    $SharedDeviceBlockTemporarySessions,

        [Parameter()]
        [System.Boolean]
	    $AppClipsBlocked,

        [Parameter()]
        [System.Boolean]
	    $ApplePersonalizedAdsBlocked,

        [Parameter()]
        [System.Boolean]
	    $NfcBlocked,

        [Parameter()]
        [System.Boolean]
	    $AutoUnlockBlocked,

        [Parameter()]
        [System.Boolean]
	    $UnpairedExternalBootToRecoveryAllowed,

        [Parameter()]
        [System.Boolean]
	    $OnDeviceOnlyDictationForced,

        [Parameter()]
        [System.Boolean]
	    $WiFiConnectToAllowedNetworksOnlyForced,

        [Parameter()]
        [System.Boolean]
	    $OnDeviceOnlyTranslationForced,

        [Parameter()]
        [System.Boolean]
	    $ManagedPasteboardRequired,

        [Parameter()]
        [System.String]
	    [ValidateSet('NotConfigured', 'AppStoreApp','ManagedApp','BuiltInApp')]
        $KioskModeAppType,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleOsVersion,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleOsEdition,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleDeviceMode,

        [Parameter(Mandatory = $true)]
        [System.String]
        [ValidateSet('Absent', 'Present')]
        $Ensure,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )

    Write-Verbose -Message "Checking for the Intune Device Configuration Policy {$DisplayName}"
    $ConnectionMode = New-M365DSCConnection -Workload 'MicrosoftGraph' `
        -InboundParameters $PSBoundParameters -ProfileName 'Beta'
    Select-MGProfile -Name 'Beta' | Out-Null

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName.Replace("MSFT_", "")
    $CommandName  = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion

    $nullResult = $PSBoundParameters
    $nullResult.Ensure = 'Absent'

    try
    {
        $policy = Get-MgDeviceManagementDeviceConfiguration -Filter "displayName eq '$DisplayName'" `
           -ErrorAction Stop | Where-Object -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.iosGeneralDeviceConfiguration' }

        if ($null -eq $policy)
        {
            Write-Verbose -Message "No Device Configuration Policy {$DisplayName} was found"
            return $nullResult
        }
        $AdditionalProperties = $AdditionalProperties | ConvertTo-Json | ConvertFrom-Json
        #$managedApps = $policy.AdditionalProperties.networkUsageRules.managedApps | ConvertTo-Json | ConvertFrom-Json
        $NetworkUsageRules = $policy.AdditionalProperties.networkUsageRules #| ConvertTo-Json | ConvertFrom-Json
        foreach ($rule in $NetworkUsageRules) {
            $rules += $rule | ConvertTo-Json| ConvertFrom-Json
        }
        $UsageRules = $rules | ConvertFrom-Json

        Write-Verbose -Message "Found Device Configuration Policy {$DisplayName}"
        $result = @{
            DisplayName                                    = $policy.DisplayName
            Description                                    = $policy.Description
            AccountBlockModification                       = $AdditionalProperties.accountBlockModification
            ActivationLockAllowWhenSupervised              = $AdditionalProperties.activationLockAllowWhenSupervised
            AirDropBlocked                                 = $AdditionalProperties.airDropBlocked
            AirDropForceUnmanagedDropTarget                = $AdditionalProperties.airDropForceUnmanagedDropTarget
            AirPlayForcePairingPasswordForOutgoingRequests = $AdditionalProperties.airPlayForcePairingPasswordForOutgoingRequests
            AppleWatchBlockPairing                         = $AdditionalProperties.appleWatchBlockPairing
            AppleWatchForceWristDetection                  = $AdditionalProperties.appleWatchForceWristDetection
            AppleNewsBlocked                               = $AdditionalProperties.appleNewsBlocked
            AppsSingleAppModeList                          = $AdditionalProperties.appsSingleAppModeList
            AppsVisibilityList                             = $AdditionalProperties.appsVisibilityList
            AppsVisibilityListType                         = $AdditionalProperties.appsVisibilityListType
            AppStoreBlockAutomaticDownloads                = $AdditionalProperties.appStoreBlockAutomaticDownloads
            AppStoreBlocked                                = $AdditionalProperties.appStoreBlocked
            AppStoreBlockInAppPurchases                    = $AdditionalProperties.appStoreBlockInAppPurchases
            AppStoreBlockUIAppInstallation                 = $AdditionalProperties.appStoreBlockUIAppInstallation
            AppStoreRequirePassword                        = $AdditionalProperties.appStoreRequirePassword
            AutoFillForceAuthentication                    = $AdditionalProperties.autoFillForceAuthentication
            BluetoothBlockModification                     = $AdditionalProperties.bluetoothBlockModification
            CameraBlocked                                  = $AdditionalProperties.cameraBlocked
            CellularBlockDataRoaming                       = $AdditionalProperties.cellularBlockDataRoaming
            CellularBlockGlobalBackgroundFetchWhileRoaming = $AdditionalProperties.cellularBlockGlobalBackgroundFetchWhileRoaming
            CellularBlockPerAppDataModification            = $AdditionalProperties.cellularBlockPerAppDataModification
            CellularBlockPersonalHotspot                   = $AdditionalProperties.cellularBlockPersonalHotspot
            CellularBlockPlanModification                  = $AdditionalProperties.cellularBlockPlanModification
            CellularBlockVoiceRoaming                      = $AdditionalProperties.cellularBlockVoiceRoaming
            CertificatesBlockUntrustedTlsCertificates      = $AdditionalProperties.certificatesBlockUntrustedTlsCertificates
            ClassroomAppBlockRemoteScreenObservation       = $AdditionalProperties.classroomAppBlockRemoteScreenObservation
            ClassroomAppForceUnpromptedScreenObservation   = $AdditionalProperties.classroomAppForceUnpromptedScreenObservation
            ClassroomForceAutomaticallyJoinClasses         = $AdditionalProperties.classroomForceAutomaticallyJoinClasses
            ClassroomForceUnpromptedAppAndDeviceLock       = $AdditionalProperties.classroomForceUnpromptedAppAndDeviceLock
            CompliantAppsList                              = $AdditionalProperties.compliantAppsList
            CompliantAppListType                           = $AdditionalProperties.compliantAppListType
            ConfigurationProfileBlockChanges               = $AdditionalProperties.configurationProfileBlockChanges
            DefinitionLookupBlocked                        = $AdditionalProperties.definitionLookupBlocked
            DeviceBlockEnableRestrictions                  = $AdditionalProperties.deviceBlockEnableRestrictions
            DeviceBlockEraseContentAndSettings             = $AdditionalProperties.deviceBlockEraseContentAndSettings
            DeviceBlockNameModification                    = $AdditionalProperties.deviceBlockNameModification
            DiagnosticDataBlockSubmission                  = $AdditionalProperties.diagnosticDataBlockSubmission
            DiagnosticDataBlockSubmissionModification      = $AdditionalProperties.diagnosticDataBlockSubmissionModification
            DocumentsBlockManagedDocumentsInUnmanagedApps  = $AdditionalProperties.documentsBlockManagedDocumentsInUnmanagedApps
            DocumentsBlockUnmanagedDocumentsInManagedApps  = $AdditionalProperties.documentsBlockUnmanagedDocumentsInManagedApps
            EmailInDomainSuffixes                          = $AdditionalProperties.emailInDomainSuffixes
            EnterpriseAppBlockTrust                        = $AdditionalProperties.enterpriseAppBlockTrust
            EnterpriseAppBlockTrustModification            = $AdditionalProperties.enterpriseAppBlockTrustModification
            EsimBlockModification                          = $AdditionalProperties.esimBlockModification
            FaceTimeBlocked                                = $AdditionalProperties.faceTimeBlocked
            FindMyFriendsBlocked                           = $AdditionalProperties.findMyFriendsBlocked
            GamingBlockGameCenterFriends                   = $AdditionalProperties.gamingBlockGameCenterFriends
            GamingBlockMultiplayer                         = $AdditionalProperties.gamingBlockMultiplayer
            GameCenterBlocked                              = $AdditionalProperties.gameCenterBlocked
            HostPairingBlocked                             = $AdditionalProperties.hostPairingBlocked
            iBooksStoreBlocked                             = $AdditionalProperties.iBooksStoreBlocked
            iBooksStoreBlockErotica                        = $AdditionalProperties.iBooksStoreBlockErotica
            iCloudBlockActivityContinuation                = $AdditionalProperties.iCloudBlockActivityContinuation
            iCloudBlockBackup                              = $AdditionalProperties.iCloudBlockBackup
            iCloudBlockDocumentSync                        = $AdditionalProperties.iCloudBlockDocumentSync
            iCloudBlockManagedAppsSync                     = $AdditionalProperties.iCloudBlockManagedAppsSync
            iCloudBlockPhotoLibrary                        = $AdditionalProperties.iCloudBlockPhotoLibrary
            iCloudBlockPhotoStreamSync                     = $AdditionalProperties.iCloudBlockPhotoStreamSync
            iCloudBlockSharedPhotoStream                   = $AdditionalProperties.iCloudBlockSharedPhotoStream
            iCloudRequireEncryptedBackup                   = $AdditionalProperties.iCloudRequireEncryptedBackup
            iTunesBlockExplicitContent                     = $AdditionalProperties.iTunesBlockExplicitContent
            iTunesBlockMusicService                        = $AdditionalProperties.iTunesBlockMusicService
            iTunesBlockRadio                               = $AdditionalProperties.iTunesBlockRadio
            KeyboardBlockAutoCorrect                       = $AdditionalProperties.keyboardBlockAutoCorrect
            KeyboardBlockDictation                         = $AdditionalProperties.keyboardBlockDictation
            KeyboardBlockPredictive                        = $AdditionalProperties.keyboardBlockPredictive
            KeyboardBlockShortcuts                         = $AdditionalProperties.keyboardBlockShortcuts
            KeyboardBlockSpellCheck                        = $AdditionalProperties.keyboardBlockSpellCheck
            KioskModeAllowAssistiveSpeak                   = $AdditionalProperties.kioskModeAllowAssistiveSpeak
            KioskModeAllowAssistiveTouchSettings           = $AdditionalProperties.kioskModeAllowAssistiveTouchSettings
            KioskModeAllowAutoLock                         = $AdditionalProperties.kioskModeAllowAutoLock
            KioskModeBlockAutoLock                         = $AdditionalProperties.kioskModeBlockAutoLock
            KioskModeAllowColorInversionSettings           = $AdditionalProperties.kioskModeAllowColorInversionSettings
            KioskModeAllowRingerSwitch                     = $AdditionalProperties.kioskModeAllowRingerSwitch
            KioskModeBlockRingerSwitch                     = $AdditionalProperties.kioskModeBlockRingerSwitch
            KioskModeAllowScreenRotation                   = $AdditionalProperties.kioskModeAllowScreenRotation
            KioskModeBlockScreenRotation                   = $AdditionalProperties.kioskModeBlockScreenRotation
            KioskModeAllowSleepButton                      = $AdditionalProperties.kioskModeAllowSleepButton
            KioskModeBlockSleepButton                      = $AdditionalProperties.kioskModeBlockSleepButton
            KioskModeAllowTouchscreen                      = $AdditionalProperties.kioskModeAllowTouchscreen
            KioskModeBlockTouchscreen                      = $AdditionalProperties.kioskModeBlockTouchscreen
            KioskModeEnableVoiceControl                    = $AdditionalProperties.kioskModeEnableVoiceControl
            KioskModeEnableVoiceControlModification        = $AdditionalProperties.kioskModeEnableVoiceControlModification
            KioskModeAllowVoiceOverSettings                = $AdditionalProperties.kioskModeAllowVoiceOverSettings
            KioskModeAllowVolumeButtons                    = $AdditionalProperties.kioskModeAllowVolumeButtons
            KioskModeBlockVolumeButtons                    = $AdditionalProperties.kioskModeBlockVolumeButtons
            KioskModeAllowZoomSettings                     = $AdditionalProperties.kioskModeAllowZoomSettings
            KioskModeAppStoreUrl                           = $AdditionalProperties.kioskModeAppStoreUrl
            KioskModeBuiltInAppId                          = $AdditionalProperties.kioskModeBuiltInAppId
            KioskModeRequireAssistiveTouch                 = $AdditionalProperties.kioskModeRequireAssistiveTouch
            KioskModeRequireColorInversion                 = $AdditionalProperties.kioskModeRequireColorInversion
            KioskModeRequireMonoAudio                      = $AdditionalProperties.kioskModeRequireMonoAudio
            KioskModeRequireVoiceOver                      = $AdditionalProperties.kioskModeRequireVoiceOver
            KioskModeRequireZoom                           = $AdditionalProperties.kioskModeRequireZoom
            KioskModeManagedAppId                          = $AdditionalProperties.kioskModeManagedAppId
            LockScreenBlockControlCenter                   = $AdditionalProperties.lockScreenBlockControlCenter
            LockScreenBlockNotificationView                = $AdditionalProperties.lockScreenBlockNotificationView
            LockScreenBlockPassbook                        = $AdditionalProperties.lockScreenBlockPassbook
            LockScreenBlockTodayView                       = $AdditionalProperties.lockScreenBlockTodayView
            MediaContentRatingAustralia                    = $AdditionalProperties.mediaContentRatingAustralia
            MediaContentRatingCanada                       = $AdditionalProperties.mediaContentRatingCanada
            MediaContentRatingFrance                       = $AdditionalProperties.mediaContentRatingFrance
            MediaContentRatingGermany                      = $AdditionalProperties.mediaContentRatingGermany
            MediaContentRatingIreland                      = $AdditionalProperties.mediaContentRatingIreland
            MediaContentRatingJapan                        = $AdditionalProperties.mediaContentRatingJapan
            MediaContentRatingNewZealand                   = $AdditionalProperties.mediaContentRatingNewZealand
            MediaContentRatingUnitedKingdom                = $AdditionalProperties.mediaContentRatingUnitedKingdom
            MediaContentRatingUnitedStates                 = $AdditionalProperties.mediaContentRatingUnitedStates
            NetworkUsageRules                              = $NetworkUsageRules
            MediaContentRatingApps                         = $AdditionalProperties.mediaContentRatingApps
            MessagesBlocked                                = $AdditionalProperties.messagesBlocked
            NotificationsBlockSettingsModification         = $AdditionalProperties.notificationsBlockSettingsModification
            PasscodeBlockFingerprintUnlock                 = $AdditionalProperties.passcodeBlockFingerprintUnlock
            PasscodeBlockModification                      = $AdditionalProperties.passcodeBlockModification
            PasscodeBlockSimple                            = $AdditionalProperties.passcodeBlockSimple
            PasscodeExpirationDays                         = $AdditionalProperties.passcodeExpirationDays
            PasscodeMinimumLength                          = $AdditionalProperties.passcodeMinimumLength
            PasscodeMinutesOfInactivityBeforeLock          = $AdditionalProperties.passcodeMinutesOfInactivityBeforeLock
            PasscodeMinutesOfInactivityBeforeScreenTimeout = $AdditionalProperties.passcodeMinutesOfInactivityBeforeScreenTimeout
            PasscodeMinimumCharacterSetCount               = $AdditionalProperties.passcodeMinimumCharacterSetCount
            PasscodePreviousPasscodeBlockCount             = $AdditionalProperties.passcodePreviousPasscodeBlockCount
            PasscodeSignInFailureCountBeforeWipe           = $AdditionalProperties.passcodeSignInFailureCountBeforeWipe
            PasscodeRequiredType                           = $AdditionalProperties.passcodeRequiredType
            PasscodeRequired                               = $AdditionalProperties.passcodeRequired
            PodcastsBlocked                                = $AdditionalProperties.podcastsBlocked
            ProximityBlockSetupToNewDevice                 = $AdditionalProperties.proximityBlockSetupToNewDevice
            SafariBlockAutofill                            = $AdditionalProperties.safariBlockAutofill
            SafariBlockJavaScript                          = $AdditionalProperties.safariBlockJavaScript
            SafariBlockPopups                              = $AdditionalProperties.safariBlockPopups
            SafariBlocked                                  = $AdditionalProperties.safariBlocked
            SafariCookieSettings                           = $AdditionalProperties.safariCookieSettings
            SafariManagedDomains                           = $AdditionalProperties.safariManagedDomains
            SafariPasswordAutoFillDomains                  = $AdditionalProperties.safariPasswordAutoFillDomains
            SafariRequireFraudWarning                      = $AdditionalProperties.safariRequireFraudWarning
            ScreenCaptureBlocked                           = $AdditionalProperties.screenCaptureBlocked
            SiriBlocked                                    = $AdditionalProperties.siriBlocked
            SiriBlockedWhenLocked                          = $AdditionalProperties.siriBlockedWhenLocked
            SiriBlockUserGeneratedContent                  = $AdditionalProperties.siriBlockUserGeneratedContent
            SiriRequireProfanityFilter                     = $AdditionalProperties.siriRequireProfanityFilter
            SoftwareUpdatesEnforcedDelayInDays             = $AdditionalProperties.softwareUpdatesEnforcedDelayInDays
            SoftwareUpdatesForceDelayed                    = $AdditionalProperties.softwareUpdatesForceDelayed
            SpotlightBlockInternetResults                  = $AdditionalProperties.spotlightBlockInternetResults
            VoiceDialingBlocked                            = $AdditionalProperties.voiceDialingBlocked
            WallpaperBlockModification                     = $AdditionalProperties.wallpaperBlockModification
            WiFiConnectOnlyToConfiguredNetworks            = $AdditionalProperties.WiFiConnectOnlyToConfiguredNetworks
            ClassroomForceRequestPermissionToLeaveClasses  = $AdditionalProperties.ClassroomForceRequestPermissionToLeaveClasses
            KeychainBlockCloudSync                         = $AdditionalProperties.KeychainBlockCloudSync
            PkiBlockOTAUpdates                             = $AdditionalProperties.PkiBlockOTAUpdates
            PrivacyForceLimitAdTracking                    = $AdditionalProperties.PrivacyForceLimitAdTracking
            EnterpriseBookBlockBackup                      = $AdditionalProperties.EnterpriseBookBlockBackup
            EnterpriseBookBlockMetadataSync                = $AdditionalProperties.EnterpriseBookBlockMetadataSync
            AirPrintBlocked                                = $AdditionalProperties.AirPrintBlocked
            AirPrintBlockCredentialsStorage                = $AdditionalProperties.AirPrintBlockCredentialsStorage
            AirPrintForceTrustedTLS                        = $AdditionalProperties.AirPrintForceTrustedTLS
            AirPrintBlockiBeaconDiscovery                  = $AdditionalProperties.AirPrintBlockiBeaconDiscovery
            FilesNetworkDriveAccessBlocked                 = $AdditionalProperties.FilesNetworkDriveAccessBlocked
            FilesUsbDriveAccessBlocked                     = $AdditionalProperties.FilesUsbDriveAccessBlocked
            WifiPowerOnForced                              = $AdditionalProperties.WifiPowerOnForced
            BlockSystemAppRemoval                          = $AdditionalProperties.BlockSystemAppRemoval
            VpnBlockCreation                               = $AdditionalProperties.VpnBlockCreation
            AppRemovalBlocked                              = $AdditionalProperties.AppRemovalBlocked
            UsbRestrictedModeBlocked                       = $AdditionalProperties.UsbRestrictedModeBlocked
            PasswordBlockAutoFill                          = $AdditionalProperties.PasswordBlockAutoFill
            PasswordBlockProximityRequests                 = $AdditionalProperties.PasswordBlockProximityRequests
            PasswordBlockAirDropSharing                    = $AdditionalProperties.PasswordBlockAirDropSharing
            DateAndTimeForceSetAutomatically               = $AdditionalProperties.DateAndTimeForceSetAutomatically
            ContactsAllowManagedToUnmanagedWrite           = $AdditionalProperties.ContactsAllowUnmanagedToManagedRead
            ContactsAllowUnmanagedToManagedRead            = $AdditionalProperties.ContactsAllowUnmanagedToManagedRead
            CellularBlockPersonalHotspotModification       = $AdditionalProperties.CellularBlockPersonalHotspotModification
            ContinuousPathKeyboardBlocked                  = $AdditionalProperties.ContinuousPathKeyboardBlocked
            FindMyDeviceInFindMyAppBlocked                 = $AdditionalProperties.FindMyDeviceInFindMyAppBlocked
            FindMyFriendsInFindMyAppBlocked                = $AdditionalProperties.FindMyFriendsInFindMyAppBlocked
            ITunesBlocked                                  = $AdditionalProperties.ITunesBlocked
            SharedDeviceBlockTemporarySessions             = $AdditionalProperties.SharedDeviceBlockTemporarySessions
            AppClipsBlocked                                = $AdditionalProperties.AppClipsBlocked
            ApplePersonalizedAdsBlocked                    = $AdditionalProperties.ApplePersonalizedAdsBlocked
            NfcBlocked                                     = $AdditionalProperties.NfcBlocked
            AutoUnlockBlocked                              = $AdditionalProperties.AutoUnlockBlocked
            UnpairedExternalBootToRecoveryAllowed          = $AdditionalProperties.UnpairedExternalBootToRecoveryAllowed
            OnDeviceOnlyDictationForced                    = $AdditionalProperties.OnDeviceOnlyDictationForced
            WiFiConnectToAllowedNetworksOnlyForced         = $AdditionalProperties.WiFiConnectToAllowedNetworksOnlyForced
            OnDeviceOnlyTranslationForced                  = $AdditionalProperties.OnDeviceOnlyTranslationForced
            ManagedPasteboardRequired                      = $AdditionalProperties.ManagedPasteboardRequired
            KioskModeAppType                               = $AdditionalProperties.KioskModeAppType
            DeviceManagementApplicabilityRuleOsEdition     = $DeviceManagementApplicabilityRuleOsVersion
            DeviceManagementApplicabilityRuleOsVersion     = $DeviceManagementApplicabilityRuleOsVersion
            DeviceManagementApplicabilityRuleDeviceMode    = $DeviceManagementApplicabilityRuleDeviceMode
            Ensure                                         = "Present"
            Credential                                     = $Credential
            ApplicationId                                  = $ApplicationId
            TenantId                                       = $TenantId
            ApplicationSecret                              = $ApplicationSecret
            CertificateThumbprint                          = $CertificateThumbprint
        }
        Return $result
    }
    catch
    {
        try
        {
            Write-Verbose -Message $_
            $tenantIdValue = ""
            $tenantIdValue = $Credential.UserName.Split('@')[1]
            Add-M365DSCEvent -Message $_ -EntryType 'Error' `
                -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
                -TenantId $tenantIdValue
        }
        catch
        {
            Write-Verbose -Message $_
        }
        return $nullResult
    }
}

function Set-TargetResource
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.Boolean]
        $AccountBlockModification,

        [Parameter()]
        [System.Boolean]
        $ActivationLockAllowWhenSupervised,

        [Parameter()]
        [System.Boolean]
        $AirDropBlocked,

        [Parameter()]
        [System.Boolean]
        $AirDropForceUnmanagedDropTarget,

        [Parameter()]
        [System.Boolean]
        $AirPlayForcePairingPasswordForOutgoingRequests,

        [Parameter()]
        [System.Boolean]
        $AppleWatchBlockPairing,

        [Parameter()]
        [System.Boolean]
        $AppleWatchForceWristDetection,

        [Parameter()]
        [System.Boolean]
        $AppleNewsBlocked,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AppsSingleAppModeList,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AppsVisibilityList,

        [Parameter()]
        [System.String]
        [ValidateSet('None', 'AppsInListCompliant','AppsNotInListCompliant')]
        $AppsVisibilityListType,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockAutomaticDownloads,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlocked,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockInAppPurchases,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockUIAppInstallation,

        [Parameter()]
        [System.Boolean]
        $AppStoreRequirePassword,

        [Parameter()]
        [System.Boolean]
        $AutoFillForceAuthentication,

        [Parameter()]
        [System.Boolean]
        $BluetoothBlockModification,

        [Parameter()]
        [System.Boolean]
        $CameraBlocked,

        [Parameter()]
        [System.Boolean]
        $CellularBlockDataRoaming,

        [Parameter()]
        [System.Boolean]
        $CellularBlockGlobalBackgroundFetchWhileRoaming,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPerAppDataModification,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPersonalHotspot,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPlanModification,

        [Parameter()]
        [System.Boolean]
        $CellularBlockVoiceRoaming,

        [Parameter()]
        [System.Boolean]
        $CertificatesBlockUntrustedTlsCertificates,

        [Parameter()]
        [System.Boolean]
        $ClassroomAppBlockRemoteScreenObservation,

        [Parameter()]
        [System.Boolean]
        $ClassroomAppForceUnpromptedScreenObservation,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceAutomaticallyJoinClasses,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceUnpromptedAppAndDeviceLock,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $CompliantAppsList,

        [Parameter()]
        [System.String]
        [ValidateSet('None', 'AppsInListCompliant','AppsNotInListCompliant')]
        $CompliantAppListType,

        [Parameter()]
        [System.Boolean]
        $ConfigurationProfileBlockChanges,

        [Parameter()]
        [System.Boolean]
        $DefinitionLookupBlocked,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockEnableRestrictions,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockEraseContentAndSettings,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockNameModification,

        [Parameter()]
        [System.Boolean]
        $DiagnosticDataBlockSubmission,

        [Parameter()]
        [System.Boolean]
        $DiagnosticDataBlockSubmissionModification,

        [Parameter()]
        [System.Boolean]
        $DocumentsBlockManagedDocumentsInUnmanagedApps,

        [Parameter()]
        [System.Boolean]
        $DocumentsBlockUnmanagedDocumentsInManagedApps,

        [Parameter()]
        [System.String[]]
        $EmailInDomainSuffixes,

        [Parameter()]
        [System.Boolean]
        $EnterpriseAppBlockTrust,

        [Parameter()]
        [System.Boolean]
        $EnterpriseAppBlockTrustModification,

        [Parameter()]
        [System.Boolean]
        $FaceTimeBlocked,

        [Parameter()]
        [System.Boolean]
        $FindMyFriendsBlocked,

        [Parameter()]
        [System.Boolean]
        $GamingBlockGameCenterFriends,

        [Parameter()]
        [System.Boolean]
        $GamingBlockMultiplayer,

        [Parameter()]
        [System.Boolean]
        $GameCenterBlocked,

        [Parameter()]
        [System.Boolean]
        $HostPairingBlocked,

        [Parameter()]
        [System.Boolean]
        $iBooksStoreBlocked,

        [Parameter()]
        [System.Boolean]
        $iBooksStoreBlockErotica,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockActivityContinuation,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockBackup,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockDocumentSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockManagedAppsSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockPhotoLibrary,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockPhotoStreamSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockSharedPhotoStream,

        [Parameter()]
        [System.Boolean]
        $iCloudRequireEncryptedBackup,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockExplicitContent,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockMusicService,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockRadio,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockAutoCorrect,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockDictation,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockPredictive,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockShortcuts,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockSpellCheck,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAssistiveSpeak,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAssistiveTouchSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAutoLock,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockAutoLock,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowColorInversionSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowRingerSwitch,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockRingerSwitch,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowScreenRotation,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockScreenRotation,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowSleepButton,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockSleepButton,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowTouchscreen,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockTouchscreen,

        [Parameter()]
        [System.Boolean]
        $KioskModeEnableVoiceControl,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVoiceControlModification,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVoiceOverSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVolumeButtons,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockVolumeButtons,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowZoomSettings,

        [Parameter()]
        [System.String]
        $KioskModeAppStoreUrl,

        [Parameter()]
        [System.String]
        $KioskModeBuiltInAppId,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireAssistiveTouch,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireColorInversion,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireMonoAudio,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireVoiceOver,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireZoom,

        [Parameter()]
        [System.String]
        $KioskModeManagedAppId,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockControlCenter,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockNotificationView,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockPassbook,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockTodayView,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingAustralia,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingCanada,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingFrance,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingGermany,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingIreland,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingJapan,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingNewZealand,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingUnitedKingdom,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingUnitedStates,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $NetworkUsageRules,

        [Parameter()]
        [System.String]
        [ValidateSet('AllAllowed', 'AllBlocked','AgesAbove4','AgesAbove9','AgesAbove12','AgesAbove17')]
        $MediaContentRatingApps,

        [Parameter()]
        [System.Boolean]
        $MessagesBlocked,

        [Parameter()]
        [System.Boolean]
        $NotificationsBlockSettingsModification,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockFingerprintUnlock,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockModification,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockSimple,

        [Parameter()]
        [System.String]
        $PasscodeExpirationDays,

        [Parameter()]
        [System.Uint32]
        $PasscodeMinimumLength,

        [Parameter()]
        [System.String]
        $PasscodeMinutesOfInactivityBeforeLock,

        [Parameter()]
        [System.String]
        $PasscodeMinutesOfInactivityBeforeScreenTimeout,

        [Parameter()]
        [System.String]
        $PasscodeMinimumCharacterSetCount,

        [Parameter()]
        [System.String]
        $PasscodePreviousPasscodeBlockCount,

        [Parameter()]
        [System.String]
        $PasscodeSignInFailureCountBeforeWipe,

        [Parameter()]
        [System.String]
        [ValidateSet('DeviceDefault', 'Alphanumeric','Numeric')]
        $PasscodeRequiredType = "deviceDefault",

        [Parameter()]
        [System.Boolean]
        $PasscodeRequired,

        [Parameter()]
        [System.Boolean]
        $PodcastsBlocked,

        [Parameter()]
        [System.Boolean]
        $ProximityBlockSetupToNewDevice,

        [Parameter()]
        [System.Boolean]
        $SafariBlockAutofill,

        [Parameter()]
        [System.Boolean]
        $SafariBlockJavaScript,

        [Parameter()]
        [System.Boolean]
        $SafariBlockPopups,

        [Parameter()]
        [System.Boolean]
        $SafariBlocked,

        [Parameter()]
        [System.String]
        [ValidateSet('BrowserDefault', 'BlockAlways','AllowCurrentWebSite','AllowFromWebsitesVisited','AllowAlways')]
        $SafariCookieSettings,

        [Parameter()]
        [System.String[]]
        $SafariManagedDomains,

        [Parameter()]
        [System.String[]]
        $SafariPasswordAutoFillDomains,

        [Parameter()]
        [System.Boolean]
        $SafariRequireFraudWarning,

        [Parameter()]
        [System.Boolean]
        $ScreenCaptureBlocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlockedWhenLocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlockUserGeneratedContent,

        [Parameter()]
        [System.Boolean]
        $SiriRequireProfanityFilter,

        [Parameter()]
        [System.Uint32]
        $SoftwareUpdatesEnforcedDelayInDays,

        [Parameter()]
        [System.Boolean]
        $SoftwareUpdatesForceDelayed,

        [Parameter()]
        [System.Boolean]
        $SpotlightBlockInternetResults,

        [Parameter()]
        [System.Boolean]
        $VoiceDialingBlocked,

        [Parameter()]
        [System.Boolean]
        $WallpaperBlockModification,

        [Parameter()]
        [System.Boolean]
	    $WiFiConnectOnlyToConfiguredNetworks,

	    [Parameter()]
        [System.Boolean]
	    $ClassroomForceRequestPermissionToLeaveClasses,

        [Parameter()]
        [System.Boolean]
	    $KeychainBlockCloudSync,

	    [Parameter()]
        [System.Boolean]
	    $PkiBlockOTAUpdates,

        [Parameter()]
        [System.Boolean]
	    $PrivacyForceLimitAdTracking,

        [Parameter()]
        [System.Boolean]
	    $EnterpriseBookBlockBackup,

        [Parameter()]
        [System.Boolean]
	    $EnterpriseBookBlockMetadataSync,

	    [Parameter()]
        [System.Boolean]
	    $AirPrintBlocked,

        [Parameter()]
        [System.Boolean]
	    $AirPrintBlockCredentialsStorage,

        [Parameter()]
        [System.Boolean]
	    $AirPrintForceTrustedTLS,

        [Parameter()]
        [System.Boolean]
	    $AirPrintBlockiBeaconDiscovery,

        [Parameter()]
        [System.Boolean]
	    $FilesNetworkDriveAccessBlocked,

        [Parameter()]
        [System.Boolean]
	    $FilesUsbDriveAccessBlocked,

        [Parameter()]
        [System.Boolean]
	    $WifiPowerOnForced,

        [Parameter()]
        [System.Boolean]
	    $BlockSystemAppRemoval,

        [Parameter()]
        [System.Boolean]
	    $VpnBlockCreation,

        [Parameter()]
        [System.Boolean]
	    $AppRemovalBlocked,

        [Parameter()]
        [System.Boolean]
	    $UsbRestrictedModeBlocked,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockAutoFill,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockProximityRequests,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockAirDropSharing,

        [Parameter()]
        [System.Boolean]
	    $DateAndTimeForceSetAutomatically,

        [Parameter()]
        [System.Boolean]
	    $ContactsAllowManagedToUnmanagedWrite,

        [Parameter()]
        [System.Boolean]
	    $ContactsAllowUnmanagedToManagedRead,

        [Parameter()]
        [System.Boolean]
	    $CellularBlockPersonalHotspotModification,

        [Parameter()]
        [System.Boolean]
	    $ContinuousPathKeyboardBlocked,

        [Parameter()]
        [System.Boolean]
	    $FindMyDeviceInFindMyAppBlocked,

        [Parameter()]
        [System.Boolean]
	    $FindMyFriendsInFindMyAppBlocked,

        [Parameter()]
        [System.Boolean]
	    $ITunesBlocked,

        [Parameter()]
        [System.Boolean]
	    $SharedDeviceBlockTemporarySessions,

        [Parameter()]
        [System.Boolean]
	    $AppClipsBlocked,

        [Parameter()]
        [System.Boolean]
	    $ApplePersonalizedAdsBlocked,

        [Parameter()]
        [System.Boolean]
	    $NfcBlocked,

        [Parameter()]
        [System.Boolean]
	    $AutoUnlockBlocked,

        [Parameter()]
        [System.Boolean]
	    $UnpairedExternalBootToRecoveryAllowed,

        [Parameter()]
        [System.Boolean]
	    $OnDeviceOnlyDictationForced,

        [Parameter()]
        [System.Boolean]
	    $WiFiConnectToAllowedNetworksOnlyForced,

        [Parameter()]
        [System.Boolean]
	    $OnDeviceOnlyTranslationForced,

        [Parameter()]
        [System.Boolean]
	    $ManagedPasteboardRequired,

        [Parameter()]
        [System.String]
	    [ValidateSet('NotConfigured', 'AppStoreApp','ManagedApp','BuiltInApp')]
        $KioskModeAppType,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleOsVersion,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleOsEdition,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleDeviceMode,

        [Parameter(Mandatory = $true)]
        [System.String]
        [ValidateSet('Absent', 'Present')]
        $Ensure,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )

    $ConnectionMode = New-M365DSCConnection -Workload 'MicrosoftGraph' `
        -InboundParameters $PSBoundParameters -ProfileName 'Beta'
    Select-MGProfile -Name 'Beta' | Out-Null

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName.Replace("MSFT_", "")
    $CommandName  = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion

    $currentPolicy = Get-TargetResource @PSBoundParameters

    $PSBoundParameters.Remove("Ensure") | Out-Null
    $PSBoundParameters.Remove("Credential") | Out-Null
    $PSBoundParameters.Remove("ApplicationId") | Out-Null
    $PSBoundParameters.Remove("TenantId") | Out-Null
    $PSBoundParameters.Remove("ApplicationSecret") | Out-Null
    $PSBoundParameters.Remove("CertificateThumbprint") | Out-Null

    if ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Absent')
    {
        $CreationParams = $PSBoundParameters
        Write-Verbose -Message "Creating new Device Configuration Policy {$DisplayName}"
        $PSBoundParameters.Remove('DisplayName') | Out-Null
        $PSBoundParameters.Remove('Description') | Out-Null
        if ($PSBoundParameters.ContainsKey("appsVisibilityList"))
        {
            $appsVisibilityList = Convert-CIMToAdvancedSettings $appsVisibilityList
            $CreationParams["appsVisibilityList"] = $appsVisibilityList
        }
        elseif($PSBoundParameters.ContainsKey("appsSingleAppModeList"))
        {
            $appsSingleAppModeList = Convert-CIMToAdvancedSettings $appsVisibilityList
            $CreationParams["appsSingleAppModeList"] = $appsSingleAppModeList
        }
        elseif($PSBoundParameters.ContainsKey("compliantAppsList"))
        {
            $compliantAppsList = Convert-CIMToAdvancedSettings $compliantAppsList
            $CreationParams["compliantAppsList"] = $compliantAppsList
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingAustralia"))
        {
            $mediaContentRatingAustralia = Convert-CIMToAdvancedSettings $mediaContentRatingAustralia
            $CreationParams["mediaContentRatingAustralia"] = $mediaContentRatingAustralia
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingCanada"))
        {
            $mediaContentRatingCanada = Convert-CIMToAdvancedSettings $mediaContentRatingCanada
            $CreationParams["mediaContentRatingCanada"] = $mediaContentRatingCanada
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingFrance"))
        {
            $mediaContentRatingFrance = Convert-CIMToAdvancedSettings $mediaContentRatingFrance
            $CreationParams["mediaContentRatingFrance"] = $mediaContentRatingFrance
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingGermany"))
        {
            $mediaContentRatingGermany = Convert-CIMToAdvancedSettings $mediaContentRatingGermany
            $CreationParams["mediaContentRatingGermany"] = $mediaContentRatingGermany
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingIreland"))
        {
            $appsVisibilityList = Convert-CIMToAdvancedSettings $mediaContentRatingIreland
            $CreationParams["mediaContentRatingIreland"] = $mediaContentRatingIreland
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingJapan"))
        {
            $mediaContentRatingJapan = Convert-CIMToAdvancedSettings $mediaContentRatingJapan
            $CreationParams["mediaContentRatingJapan"] = $mediaContentRatingJapan
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingNewZealand"))
        {
            $appsVisibilityList = Convert-CIMToAdvancedSettings $mediaContentRatingNewZealand
            $CreationParams["mediaContentRatingNewZealand"] = $mediaContentRatingNewZealand
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingUnitedKingdom"))
        {
            $mediaContentRatingUnitedKingdom = Convert-CIMToAdvancedSettings $mediaContentRatingUnitedKingdom
            $CreationParams["mediaContentRatingUnitedKingdom"] = $mediaContentRatingUnitedKingdom
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingUnitedKingdom"))
        {
            $mediaContentRatingUnitedStates = Convert-CIMToAdvancedSettings $mediaContentRatingUnitedStates
            $CreationParams["mediaContentRatingUnitedStates"] = $mediaContentRatingUnitedStates
        }
        elseif($PSBoundParameters.ContainsKey("iOSNetworkUsageRules"))
        {
            $iOSNetworkUsageRules = Convert-CIMToAdvancedSettings $iOSNetworkUsageRules
            $CreationParams["iOSNetworkUsageRules"] = $iOSNetworkUsageRules
        }
        elseif($PSBoundParameters.ContainsKey("DeviceManagementApplicabilityRuleOsEdition"))
        {
            $DeviceManagementApplicabilityRuleOsEdition = Convert-CIMToAdvancedSettings $DeviceManagementApplicabilityRuleOsEdition
            $CreationParams["DeviceManagementApplicabilityRuleOsEdition"] = $DeviceManagementApplicabilityRuleOsEdition
        }
        elseif($PSBoundParameters.ContainsKey("DeviceManagementApplicabilityRuleOsVersion"))
        {
            $DeviceManagementApplicabilityRuleOsVersion = Convert-CIMToAdvancedSettings $DeviceManagementApplicabilityRuleOsVersion
            $CreationParams["DeviceManagementApplicabilityRuleOsVersion"] = $DeviceManagementApplicabilityRuleOsVersion
        }
        elseif($PSBoundParameters.ContainsKey("DeviceManagementApplicabilityRuleDeviceMode"))
        {
            $DeviceManagementApplicabilityRuleDeviceMode = Convert-CIMToAdvancedSettings $DeviceManagementApplicabilityRuleDeviceMode
            $CreationParams["DeviceManagementApplicabilityRuleDeviceMode"] = $DeviceManagementApplicabilityRuleDeviceMode
        }

        New-MGDeviceManagementDeviceConfiguration -DisplayName $DisplayName `
            -Description $Description `
            -AdditionalProperties $CreationParams
    }
    elseif ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Present')
    {
        $CreationParams = $PSBoundParameters
        Write-Verbose -Message "Updating existing Device Configuration Policy {$DisplayName}"
        $configDevicePolicy = Get-MGDeviceManagementDeviceConfiguration `
            -ErrorAction Stop | Where-Object `
            -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.iosGeneralDeviceConfiguration' -and `
                $_.displayName -eq $($DisplayName) }

        $PSBoundParameters.Remove('DisplayName') | Out-Null
        $PSBoundParameters.Remove('Description') | Out-Null
        
        if ($PSBoundParameters.ContainsKey("appsVisibilityList"))
        {
            $appsVisibilityList = Convert-CIMToAdvancedSettings $appsVisibilityList
            $CreationParams["appsVisibilityList"] = $appsVisibilityList
        }
        elseif($PSBoundParameters.ContainsKey("appsSingleAppModeList"))
        {
            $appsSingleAppModeList = Convert-CIMToAdvancedSettings $appsVisibilityList
            $CreationParams["appsSingleAppModeList"] = $appsSingleAppModeList
        }
        elseif($PSBoundParameters.ContainsKey("compliantAppsList"))
        {
            $compliantAppsList = Convert-CIMToAdvancedSettings $compliantAppsList
            $CreationParams["compliantAppsList"] = $compliantAppsList
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingAustralia"))
        {
            $mediaContentRatingAustralia = Convert-CIMToAdvancedSettings $mediaContentRatingAustralia
            $CreationParams["mediaContentRatingAustralia"] = $mediaContentRatingAustralia
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingCanada"))
        {
            $mediaContentRatingCanada = Convert-CIMToAdvancedSettings $mediaContentRatingCanada
            $CreationParams["mediaContentRatingCanada"] = $mediaContentRatingCanada
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingFrance"))
        {
            $mediaContentRatingFrance = Convert-CIMToAdvancedSettings $mediaContentRatingFrance
            $CreationParams["mediaContentRatingFrance"] = $mediaContentRatingFrance
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingGermany"))
        {
            $mediaContentRatingGermany = Convert-CIMToAdvancedSettings $mediaContentRatingGermany
            $CreationParams["mediaContentRatingGermany"] = $mediaContentRatingGermany
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingIreland"))
        {
            $appsVisibilityList = Convert-CIMToAdvancedSettings $mediaContentRatingIreland
            $CreationParams["mediaContentRatingIreland"] = $mediaContentRatingIreland
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingJapan"))
        {
            $mediaContentRatingJapan = Convert-CIMToAdvancedSettings $mediaContentRatingJapan
            $CreationParams["mediaContentRatingJapan"] = $mediaContentRatingJapan
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingNewZealand"))
        {
            $appsVisibilityList = Convert-CIMToAdvancedSettings $mediaContentRatingNewZealand
            $CreationParams["mediaContentRatingNewZealand"] = $mediaContentRatingNewZealand
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingUnitedKingdom"))
        {
            $mediaContentRatingUnitedKingdom = Convert-CIMToAdvancedSettings $mediaContentRatingUnitedKingdom
            $CreationParams["mediaContentRatingUnitedKingdom"] = $mediaContentRatingUnitedKingdom
        }
        elseif($PSBoundParameters.ContainsKey("mediaContentRatingUnitedKingdom"))
        {
            $mediaContentRatingUnitedStates = Convert-CIMToAdvancedSettings $mediaContentRatingUnitedStates
            $CreationParams["mediaContentRatingUnitedStates"] = $mediaContentRatingUnitedStates
        }
        elseif($PSBoundParameters.ContainsKey("iOSNetworkUsageRules"))
        {
            $iOSNetworkUsageRules = Convert-CIMToAdvancedSettings $iOSNetworkUsageRules
            $CreationParams["iOSNetworkUsageRules"] = $iOSNetworkUsageRules
        }
        elseif($PSBoundParameters.ContainsKey("DeviceManagementApplicabilityRuleOsEdition"))
        {
            $DeviceManagementApplicabilityRuleOsEdition = Convert-CIMToAdvancedSettings $DeviceManagementApplicabilityRuleOsEdition
            $CreationParams["DeviceManagementApplicabilityRuleOsEdition"] = $DeviceManagementApplicabilityRuleOsEdition
        }
        elseif($PSBoundParameters.ContainsKey("DeviceManagementApplicabilityRuleOsVersion"))
        {
            $DeviceManagementApplicabilityRuleOsVersion = Convert-CIMToAdvancedSettings $DeviceManagementApplicabilityRuleOsVersion
            $CreationParams["DeviceManagementApplicabilityRuleOsVersion"] = $DeviceManagementApplicabilityRuleOsVersion
        }
        elseif($PSBoundParameters.ContainsKey("DeviceManagementApplicabilityRuleDeviceMode"))
        {
            $DeviceManagementApplicabilityRuleDeviceMode = Convert-CIMToAdvancedSettings $DeviceManagementApplicabilityRuleDeviceMode
            $CreationParams["DeviceManagementApplicabilityRuleDeviceMode"] = $DeviceManagementApplicabilityRuleDeviceMode
        }

        Update-MGDeviceManagementDeviceConfiguration -AdditionalProperties $CreationParams `
            -Description $Description `
            -DeviceConfigurationId $configDevicePolicy.Id
    }
    elseif ($Ensure -eq 'Absent' -and $currentPolicy.Ensure -eq 'Present')
    {
        Write-Verbose -Message "Removing Device Configuration Policy {$DisplayName}"
        $configDevicePolicy = Get-MGDeviceManagementDeviceConfiguration `
        -ErrorAction Stop | Where-Object `
        -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.iosGeneralDeviceConfiguration' -and `
            $_.displayName -eq $($DisplayName) }

    Remove-MGDeviceManagementDeviceConfiguration -DeviceConfigurationId $configDevicePolicy.Id
    }
}

function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.Boolean]
        $AccountBlockModification,

        [Parameter()]
        [System.Boolean]
        $ActivationLockAllowWhenSupervised,

        [Parameter()]
        [System.Boolean]
        $AirDropBlocked,

        [Parameter()]
        [System.Boolean]
        $AirDropForceUnmanagedDropTarget,

        [Parameter()]
        [System.Boolean]
        $AirPlayForcePairingPasswordForOutgoingRequests,

        [Parameter()]
        [System.Boolean]
        $AppleWatchBlockPairing,

        [Parameter()]
        [System.Boolean]
        $AppleWatchForceWristDetection,

        [Parameter()]
        [System.Boolean]
        $AppleNewsBlocked,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AppsSingleAppModeList,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AppsVisibilityList,

        [Parameter()]
        [System.String]
        [ValidateSet('None', 'AppsInListCompliant','AppsNotInListCompliant')]
        $AppsVisibilityListType,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockAutomaticDownloads,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlocked,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockInAppPurchases,

        [Parameter()]
        [System.Boolean]
        $AppStoreBlockUIAppInstallation,

        [Parameter()]
        [System.Boolean]
        $AppStoreRequirePassword,

        [Parameter()]
        [System.Boolean]
        $AutoFillForceAuthentication,

        [Parameter()]
        [System.Boolean]
        $BluetoothBlockModification,

        [Parameter()]
        [System.Boolean]
        $CameraBlocked,

        [Parameter()]
        [System.Boolean]
        $CellularBlockDataRoaming,

        [Parameter()]
        [System.Boolean]
        $CellularBlockGlobalBackgroundFetchWhileRoaming,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPerAppDataModification,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPersonalHotspot,

        [Parameter()]
        [System.Boolean]
        $CellularBlockPlanModification,

        [Parameter()]
        [System.Boolean]
        $CellularBlockVoiceRoaming,

        [Parameter()]
        [System.Boolean]
        $CertificatesBlockUntrustedTlsCertificates,

        [Parameter()]
        [System.Boolean]
        $ClassroomAppBlockRemoteScreenObservation,

        [Parameter()]
        [System.Boolean]
        $ClassroomAppForceUnpromptedScreenObservation,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceAutomaticallyJoinClasses,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceUnpromptedAppAndDeviceLock,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $CompliantAppsList,

        [Parameter()]
        [System.String]
        [ValidateSet('None', 'AppsInListCompliant','AppsNotInListCompliant')]
        $CompliantAppListType,

        [Parameter()]
        [System.Boolean]
        $ConfigurationProfileBlockChanges,

        [Parameter()]
        [System.Boolean]
        $DefinitionLookupBlocked,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockEnableRestrictions,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockEraseContentAndSettings,

        [Parameter()]
        [System.Boolean]
        $DeviceBlockNameModification,

        [Parameter()]
        [System.Boolean]
        $DiagnosticDataBlockSubmission,

        [Parameter()]
        [System.Boolean]
        $DiagnosticDataBlockSubmissionModification,

        [Parameter()]
        [System.Boolean]
        $DocumentsBlockManagedDocumentsInUnmanagedApps,

        [Parameter()]
        [System.Boolean]
        $DocumentsBlockUnmanagedDocumentsInManagedApps,

        [Parameter()]
        [System.String[]]
        $EmailInDomainSuffixes,

        [Parameter()]
        [System.Boolean]
        $EnterpriseAppBlockTrust,

        [Parameter()]
        [System.Boolean]
        $EnterpriseAppBlockTrustModification,

        [Parameter()]
        [System.Boolean]
        $FaceTimeBlocked,

        [Parameter()]
        [System.Boolean]
        $FindMyFriendsBlocked,

        [Parameter()]
        [System.Boolean]
        $GamingBlockGameCenterFriends,

        [Parameter()]
        [System.Boolean]
        $GamingBlockMultiplayer,

        [Parameter()]
        [System.Boolean]
        $GameCenterBlocked,

        [Parameter()]
        [System.Boolean]
        $HostPairingBlocked,

        [Parameter()]
        [System.Boolean]
        $iBooksStoreBlocked,

        [Parameter()]
        [System.Boolean]
        $iBooksStoreBlockErotica,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockActivityContinuation,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockBackup,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockDocumentSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockManagedAppsSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockPhotoLibrary,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockPhotoStreamSync,

        [Parameter()]
        [System.Boolean]
        $iCloudBlockSharedPhotoStream,

        [Parameter()]
        [System.Boolean]
        $iCloudRequireEncryptedBackup,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockExplicitContent,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockMusicService,

        [Parameter()]
        [System.Boolean]
        $iTunesBlockRadio,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockAutoCorrect,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockDictation,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockPredictive,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockShortcuts,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockSpellCheck,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAssistiveSpeak,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAssistiveTouchSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowAutoLock,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockAutoLock,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowColorInversionSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowRingerSwitch,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockRingerSwitch,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowScreenRotation,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockScreenRotation,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowSleepButton,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockSleepButton,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowTouchscreen,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockTouchscreen,

        [Parameter()]
        [System.Boolean]
        $KioskModeEnableVoiceControl,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVoiceControlModification,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVoiceOverSettings,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowVolumeButtons,

        [Parameter()]
        [System.Boolean]
        $KioskModeBlockVolumeButtons,

        [Parameter()]
        [System.Boolean]
        $KioskModeAllowZoomSettings,

        [Parameter()]
        [System.String]
        $KioskModeAppStoreUrl,

        [Parameter()]
        [System.String]
        $KioskModeBuiltInAppId,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireAssistiveTouch,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireColorInversion,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireMonoAudio,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireVoiceOver,

        [Parameter()]
        [System.Boolean]
        $KioskModeRequireZoom,

        [Parameter()]
        [System.String]
        $KioskModeManagedAppId,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockControlCenter,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockNotificationView,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockPassbook,

        [Parameter()]
        [System.Boolean]
        $LockScreenBlockTodayView,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingAustralia,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingCanada,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingFrance,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingGermany,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingIreland,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingJapan,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingNewZealand,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingUnitedKingdom,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $MediaContentRatingUnitedStates,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $NetworkUsageRules,

        [Parameter()]
        [System.String]
        [ValidateSet('AllAllowed', 'AllBlocked','AgesAbove4','AgesAbove9','AgesAbove12','AgesAbove17')]
        $MediaContentRatingApps,

        [Parameter()]
        [System.Boolean]
        $MessagesBlocked,

        [Parameter()]
        [System.Boolean]
        $NotificationsBlockSettingsModification,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockFingerprintUnlock,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockModification,

        [Parameter()]
        [System.Boolean]
        $PasscodeBlockSimple,

        [Parameter()]
        [System.String]
        $PasscodeExpirationDays,

        [Parameter()]
        [System.Uint32]
        $PasscodeMinimumLength,

        [Parameter()]
        [System.String]
        $PasscodeMinutesOfInactivityBeforeLock,

        [Parameter()]
        [System.String]
        $PasscodeMinutesOfInactivityBeforeScreenTimeout,

        [Parameter()]
        [System.String]
        $PasscodeMinimumCharacterSetCount,

        [Parameter()]
        [System.String]
        $PasscodePreviousPasscodeBlockCount,

        [Parameter()]
        [System.String]
        $PasscodeSignInFailureCountBeforeWipe,

        [Parameter()]
        [System.String]
        [ValidateSet('DeviceDefault', 'Alphanumeric','Numeric')]
        $PasscodeRequiredType = "deviceDefault",

        [Parameter()]
        [System.Boolean]
        $PasscodeRequired,

        [Parameter()]
        [System.Boolean]
        $PodcastsBlocked,

        [Parameter()]
        [System.Boolean]
        $ProximityBlockSetupToNewDevice,

        [Parameter()]
        [System.Boolean]
        $SafariBlockAutofill,

        [Parameter()]
        [System.Boolean]
        $SafariBlockJavaScript,

        [Parameter()]
        [System.Boolean]
        $SafariBlockPopups,

        [Parameter()]
        [System.Boolean]
        $SafariBlocked,

        [Parameter()]
        [System.String]
        [ValidateSet('BrowserDefault', 'BlockAlways','AllowCurrentWebSite','AllowFromWebsitesVisited','AllowAlways')]
        $SafariCookieSettings,

        [Parameter()]
        [System.String[]]
        $SafariManagedDomains,

        [Parameter()]
        [System.String[]]
        $SafariPasswordAutoFillDomains,

        [Parameter()]
        [System.Boolean]
        $SafariRequireFraudWarning,

        [Parameter()]
        [System.Boolean]
        $ScreenCaptureBlocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlockedWhenLocked,

        [Parameter()]
        [System.Boolean]
        $SiriBlockUserGeneratedContent,

        [Parameter()]
        [System.Boolean]
        $SiriRequireProfanityFilter,

        [Parameter()]
        [System.Uint32]
        $SoftwareUpdatesEnforcedDelayInDays,

        [Parameter()]
        [System.Boolean]
        $SoftwareUpdatesForceDelayed,

        [Parameter()]
        [System.Boolean]
        $SpotlightBlockInternetResults,

        [Parameter()]
        [System.Boolean]
        $VoiceDialingBlocked,

        [Parameter()]
        [System.Boolean]
        $WallpaperBlockModification,

        [Parameter()]
        [System.Boolean]
	    $WiFiConnectOnlyToConfiguredNetworks,

	    [Parameter()]
        [System.Boolean]
	    $ClassroomForceRequestPermissionToLeaveClasses,

        [Parameter()]
        [System.Boolean]
	    $KeychainBlockCloudSync,

	    [Parameter()]
        [System.Boolean]
	    $PkiBlockOTAUpdates,

        [Parameter()]
        [System.Boolean]
	    $PrivacyForceLimitAdTracking,

        [Parameter()]
        [System.Boolean]
	    $EnterpriseBookBlockBackup,

        [Parameter()]
        [System.Boolean]
	    $EnterpriseBookBlockMetadataSync,

	    [Parameter()]
        [System.Boolean]
	    $AirPrintBlocked,

        [Parameter()]
        [System.Boolean]
	    $AirPrintBlockCredentialsStorage,

        [Parameter()]
        [System.Boolean]
	    $AirPrintForceTrustedTLS,

        [Parameter()]
        [System.Boolean]
	    $AirPrintBlockiBeaconDiscovery,

        [Parameter()]
        [System.Boolean]
	    $FilesNetworkDriveAccessBlocked,

        [Parameter()]
        [System.Boolean]
	    $FilesUsbDriveAccessBlocked,

        [Parameter()]
        [System.Boolean]
	    $WifiPowerOnForced,

        [Parameter()]
        [System.Boolean]
	    $BlockSystemAppRemoval,

        [Parameter()]
        [System.Boolean]
	    $VpnBlockCreation,

        [Parameter()]
        [System.Boolean]
	    $AppRemovalBlocked,

        [Parameter()]
        [System.Boolean]
	    $UsbRestrictedModeBlocked,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockAutoFill,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockProximityRequests,

        [Parameter()]
        [System.Boolean]
	    $PasswordBlockAirDropSharing,

        [Parameter()]
        [System.Boolean]
	    $DateAndTimeForceSetAutomatically,

        [Parameter()]
        [System.Boolean]
	    $ContactsAllowManagedToUnmanagedWrite,

        [Parameter()]
        [System.Boolean]
	    $ContactsAllowUnmanagedToManagedRead,

        [Parameter()]
        [System.Boolean]
	    $CellularBlockPersonalHotspotModification,

        [Parameter()]
        [System.Boolean]
	    $ContinuousPathKeyboardBlocked,

        [Parameter()]
        [System.Boolean]
	    $FindMyDeviceInFindMyAppBlocked,

        [Parameter()]
        [System.Boolean]
	    $FindMyFriendsInFindMyAppBlocked,

        [Parameter()]
        [System.Boolean]
	    $ITunesBlocked,

        [Parameter()]
        [System.Boolean]
	    $SharedDeviceBlockTemporarySessions,

        [Parameter()]
        [System.Boolean]
	    $AppClipsBlocked,

        [Parameter()]
        [System.Boolean]
	    $ApplePersonalizedAdsBlocked,

        [Parameter()]
        [System.Boolean]
	    $NfcBlocked,

        [Parameter()]
        [System.Boolean]
	    $AutoUnlockBlocked,

        [Parameter()]
        [System.Boolean]
	    $UnpairedExternalBootToRecoveryAllowed,

        [Parameter()]
        [System.Boolean]
	    $OnDeviceOnlyDictationForced,

        [Parameter()]
        [System.Boolean]
	    $WiFiConnectToAllowedNetworksOnlyForced,

        [Parameter()]
        [System.Boolean]
	    $OnDeviceOnlyTranslationForced,

        [Parameter()]
        [System.Boolean]
	    $ManagedPasteboardRequired,

        [Parameter()]
        [System.String]
	    [ValidateSet('NotConfigured', 'AppStoreApp','ManagedApp','BuiltInApp')]
        $KioskModeAppType,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleOsVersion,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleOsEdition,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $deviceManagementApplicabilityRuleDeviceMode,

        [Parameter(Mandatory = $true)]
        [System.String]
        [ValidateSet('Absent', 'Present')]
        $Ensure,

        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )
    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName.Replace("MSFT_", "")
    $data = [System.Collections.Generic.Dictionary[[String], [String]]]::new()
    $data.Add("Resource", $ResourceName)
    $data.Add("Method", $MyInvocation.MyCommand)
    $data.Add("Principal", $Credential.UserName)
    $data.Add("TenantId", $TenantId)
    Add-M365DSCTelemetryEvent -Data $data
    #endregion
    Write-Verbose -Message "Testing configuration of Device Configuration Policy {$DisplayName}"

    $CurrentValues = Get-TargetResource @PSBoundParameters

    Write-Verbose -Message "Current Values: $(Convert-M365DscHashtableToString -Hashtable $CurrentValues)"
    Write-Verbose -Message "Target Values: $(Convert-M365DscHashtableToString -Hashtable $PSBoundParameters)"

    $ValuesToCheck = $PSBoundParameters
    $ValuesToCheck.Remove('Credential') | Out-Null
    $ValuesToCheck.Remove('ApplicationId') | Out-Null
    $ValuesToCheck.Remove('TenantId') | Out-Null
    $ValuesToCheck.Remove('ApplicationSecret') | Out-Null
    $ValuesToCheck.Remove('CertificateThumbprint') | Out-Null

    if ($null -ne $appsVisibilityList)
    {
        $TestappsVisibilityList = Test-AdvancedSettings -DesiredProperty $appsVisibilityList -CurrentProperty $CurrentValues.appsVisibilityList
        if ($false -eq $TestappsVisibilityList)
        {
            return $false
        }
    }
    elseif($null -ne $appsSingleAppModeList)
    {
        $TestappsSingleAppModeList = Test-AdvancedSettings -DesiredProperty $appsSingleAppModeList -CurrentProperty $CurrentValues.appsSingleAppModeList
        if ($false -eq $TestappsSingleAppModeList)
        {
            return $false
        }
    }
    elseif($null -ne $compliantAppsList)
    {
        $TestcompliantAppsList = Test-AdvancedSettings -DesiredProperty $compliantAppsList -CurrentProperty $CurrentValues.compliantAppsList
        if ($false -eq $TestAdvancedSettings)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingAustralia)
    {
        $TestmediaContentRatingAustralia = Test-AdvancedSettings -DesiredProperty $mediaContentRatingAustralia -CurrentProperty $CurrentValues.mediaContentRatingAustralia
        if ($false -eq $TestmediaContentRatingAustralia)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingCanada)
    {
        $TestmediaContentRatingCanada = Test-AdvancedSettings -DesiredProperty $mediaContentRatingCanada -CurrentProperty $CurrentValues.mediaContentRatingCanada
        if ($false -eq $TestmediaContentRatingCanada)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingFrance)
    {
        $TestmediaContentRatingFrance = Test-AdvancedSettings -DesiredProperty $mediaContentRatingFrance -CurrentProperty $CurrentValues.mediaContentRatingFrance
        if ($false -eq $TestmediaContentRatingFrance)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingGermany)
    {
        $TestmediaContentRatingGermany = Test-AdvancedSettings -DesiredProperty $mediaContentRatingGermany -CurrentProperty $CurrentValues.mediaContentRatingGermany
        if ($false -eq $TestmediaContentRatingGermany)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingIreland)
    {
        $TestmediaContentRatingIreland = Test-AdvancedSettings -DesiredProperty $mediaContentRatingIreland -CurrentProperty $CurrentValues.mediaContentRatingIreland
        if ($false -eq $TestmediaContentRatingIreland)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingJapan)
    {
        $TestmediaContentRatingJapan = Test-AdvancedSettings -DesiredProperty $mediaContentRatingJapan -CurrentProperty $CurrentValues.mediaContentRatingJapan
        if ($false -eq $TestmediaContentRatingJapan)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingNewZealand)
    {
        $TestmediaContentRatingNewZealand = Test-AdvancedSettings -DesiredProperty $mediaContentRatingNewZealand -CurrentProperty $CurrentValues.mediaContentRatingNewZealand
        if ($false -eq $TestmediaContentRatingNewZealand)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingUnitedKingdom)
    {
        $TestmediaContentRatingUnitedKingdom = Test-AdvancedSettings -DesiredProperty $mediaContentRatingUnitedKingdom -CurrentProperty $CurrentValues.mediaContentRatingUnitedKingdom
        if ($false -eq $TestmediaContentRatingUnitedKingdom)
        {
            return $false
        }
    }
    elseif($null -ne $mediaContentRatingUnitedStates)
    {
        $TestmediaContentRatingUnitedStates = Test-AdvancedSettings -DesiredProperty $mediaContentRatingUnitedStates -CurrentProperty $CurrentValues.mediaContentRatingUnitedStates
        if ($false -eq $TestmediaContentRatingUnitedStates)
        {
            return $false
        }
    }
    elseif($null -ne $iOSNetworkUsageRules)
    {
        $TestiOSNetworkUsageRules = Test-AdvancedSettings -DesiredProperty $iOSNetworkUsageRules -CurrentProperty $CurrentValues.iOSNetworkUsageRules
        if ($false -eq $TestiOSNetworkUsageRules)
        {
            return $false
        }
    }
    elseif($null -ne $AdvancedSettings)
    {
        $TestAdvancedSettings = Test-AdvancedSettings -DesiredProperty $AdvancedSettings -CurrentProperty $CurrentValues.AdvancedSettings
        if ($false -eq $TestAdvancedSettings)
        {
            return $false
        }
    }
    elseif($null -ne $AdvancedSettings)
    {
        $TestAdvancedSettings = Test-AdvancedSettings -DesiredProperty $AdvancedSettings -CurrentProperty $CurrentValues.AdvancedSettings
        if ($false -eq $TestAdvancedSettings)
        {
            return $false
        }
    }
    elseif($null -ne $AdvancedSettings)
    {
        $TestAdvancedSettings = Test-AdvancedSettings -DesiredProperty $AdvancedSettings -CurrentProperty $CurrentValues.AdvancedSettings
        if ($false -eq $TestAdvancedSettings)
        {
            return $false
        }
    }
    elseif($null -ne $DeviceManagementApplicabilityRuleOsEdition)
    {
        $TestDeviceManagementApplicabilityRuleOsEdition = Test-AdvancedSettings -DesiredProperty $DeviceManagementApplicabilityRuleOsEdition -CurrentProperty $CurrentValues.DeviceManagementApplicabilityRuleOsEdition
        if ($false -eq $TestDeviceManagementApplicabilityRuleOsEdition)
        {
            return $false
        }
    }
    elseif($null -ne $DeviceManagementApplicabilityRuleOsVersion)
    {
        $TestDeviceManagementApplicabilityRuleOsVersion = Test-AdvancedSettings -DesiredProperty $DeviceManagementApplicabilityRuleOsVersion -CurrentProperty $CurrentValues.DeviceManagementApplicabilityRuleOsVersion
        if ($false -eq $TestDeviceManagementApplicabilityRuleOsVersion)
        {
            return $false
        }
    }
    elseif($null -ne $DeviceManagementApplicabilityRuleDeviceMode)
    {
        $TestDeviceManagementApplicabilityRuleDeviceMode = Test-AdvancedSettings -DesiredProperty $DeviceManagementApplicabilityRuleDeviceMode -CurrentProperty $CurrentValues.DeviceManagementApplicabilityRuleDeviceMode
        if ($false -eq $TestDeviceManagementApplicabilityRuleDeviceMode)
        {
            return $false
        }
    }


    $TestResult = Test-M365DSCParameterState -CurrentValues $CurrentValues `
        -Source $($MyInvocation.MyCommand.Source) `
        -DesiredValues $PSBoundParameters `
        -ValuesToCheck $ValuesToCheck.Keys

    Write-Verbose -Message "Test-TargetResource returned $TestResult"

    return $TestResult
}

function Export-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.String])]
    param
    (
        [Parameter()]
        [System.Management.Automation.PSCredential]
        $Credential,

        [Parameter()]
        [System.String]
        $ApplicationId,

        [Parameter()]
        [System.String]
        $TenantId,

        [Parameter()]
        [System.String]
        $ApplicationSecret,

        [Parameter()]
        [System.String]
        $CertificateThumbprint
    )
    $ConnectionMode = New-M365DSCConnection -Workload 'MicrosoftGraph' `
        -InboundParameters $PSBoundParameters -ProfileName 'Beta'
    Select-MgProfile -Name Beta | Out-Null

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName.Replace("MSFT_", "")
    $CommandName  = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion

    try
    {
        [array]$policies = Get-MGDeviceManagementDeviceConfiguration `
            -ErrorAction Stop | Where-Object `
            -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.iosGeneralDeviceConfiguration' }
        $i = 1
        $dscContent = ''
        if ($policies.Length -eq 0)
        {
            Write-Host $Global:M365DSCEmojiGreenCheckMark
        }
        else
        {
            Write-Host "`r`n" -NoNewLine
        }
        foreach ($policy in $policies)
        {
            Write-Host "    |---[$i/$($policies.Count)] $($policy.displayName)" -NoNewline
            $params = @{
                DisplayName           = $policy.displayName
                Ensure                = 'Present'
                Credential            = $Credential
                ApplicationId         = $ApplicationId
                TenantId              = $TenantId
                ApplicationSecret     = $ApplicationSecret
                CertificateThumbprint = $CertificateThumbprint
            }
            $Results = Get-TargetResource @Params
            $Results = Update-M365DSCExportAuthenticationResults -ConnectionMode $ConnectionMode `
                -Results $Results
            $currentDSCBlock = Get-M365DSCExportContentForResource -ResourceName $ResourceName `
                -ConnectionMode $ConnectionMode `
                -ModulePath $PSScriptRoot `
                -Results $Results `
                -Credential $Credential
            $dscContent += $currentDSCBlock
            Save-M365DSCPartialExport -Content $currentDSCBlock `
                -FileName $Global:PartialExportFileName
            $i++
            Write-Host $Global:M365DSCEmojiGreenCheckMark
        }
        return $dscContent
    }
    catch
    {
        if ($_.Exception -like '*401*')
        {
            Write-Host "`r`n    $($Global:M365DSCEmojiYellowCircle) The current tenant is not registered for Intune."
        }
        try
        {
            Write-Verbose -Message $_
            $tenantIdValue = $Credential.UserName.Split('@')[1]

            Add-M365DSCEvent -Message $_ -EntryType 'Error' `
                -EventID 1 -Source $($MyInvocation.MyCommand.Source) `
                -TenantId $tenantIdValue
        }
        catch
        {
            Write-Verbose -Message $_
        }
        return ""
    }
}

function ConvertTo-NetworkUsageRulesString
{
    [CmdletBinding()]
    [OutputType([System.String[]])]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.Object[]]
        $NetWorkUsageRule
    )
    $result = ""
    $StringContent += "@(`r`n"
    foreach ($rule in $NetWorkUsageRule){
        $StringContent = "MSFT_NetWorkUsageRule`r`n            {`r`n"
        $StringContent += "@(`r`n"
        foreach ($app in $rule.managedApps){
            $StringContent = "MSFT_AppListItem`r`n            {`r`n"
            $StringContent += "                name = '$app.Name'`r`n"
            $StringContent += "                publisher = '$app.publisher'`r`n"
            $StringContent += "                appId = '$app.appId'`r`n"
            $StringContent += "            }`r`n"
        }
        $StringContent += "                cellularDataBlockWhenRoaming = '$rule.cellularDataBlockWhenRoaming'`r`n"
        $StringContent += "                cellularDataBlocked = '$app.cellularDataBlocked'`r`n"
        $StringContent += "            )}`r`n"
        $result += $StringContent        
    }
    return $result
    
}

    
    $StringContent = "MSFT_NetWorkUsageRule`r`n            {`r`n"
    foreach ($app in $rule.managedApps){
        $StringContent = "MSFT_AppListItem`r`n            {`r`n"
        $StringContent += "                name = '$app.Name'`r`n"
        $StringContent += "                publisher = '$app.publisher'`r`n"
        $StringContent += "                appId = '$app.appId'`r`n"
        $StringContent += "            }`r`n"

    }
    $StringContent += "                SensitiveInformation = "
    $StringContent += "@(`r`n"
    $result += $StringContent
    foreach ($SensitiveInformationHash in $InformationArray)
    {

        $StringContent = "MSFT_SCDLPSensitiveInformation`r`n            {`r`n"
        $StringContent += "                name = '$($SensitiveInformationHash.name.Replace("'", "''"))'`r`n"

        if ($null -ne $SensitiveInformationHash.id)
        {
            $StringContent += "                id = '$($SensitiveInformationHash.id)'`r`n"
        }

        if ($null -ne $SensitiveInformationHash.maxconfidence)
        {
            $StringContent += "                maxconfidence = '$($SensitiveInformationHash.maxconfidence)'`r`n"
        }

        if ($null -ne $SensitiveInformationHash.minconfidence)
        {
            $StringContent += "                minconfidence = '$($SensitiveInformationHash.minconfidence)'`r`n"
        }

        if ($null -ne $SensitiveInformationHash.classifiertype)
        {
            $StringContent += "                classifiertype = '$($SensitiveInformationHash.classifiertype)'`r`n"
        }

        if ($null -ne $SensitiveInformationHash.mincount)
        {
            $StringContent += "                mincount = '$($SensitiveInformationHash.mincount)'`r`n"
        }

        if ($null -ne $SensitiveInformationHash.maxcount)
        {
            $StringContent += "                maxcount = '$($SensitiveInformationHash.maxcount)'`r`n"
        }

        $StringContent += "            }`r`n"
        $result += $StringContent
    }
    $result += "            )"
    $result += "            }`r`n"
    return $result
}

function Convert-StringToAdvancedSettings
{
    [CmdletBinding()]
    [OutputType([Microsoft.Management.Infrastructure.CimInstance[]])]
    Param(
        [parameter(Mandatory = $true)]
        [System.String[]]
        $AdvancedSettings
    )
    $settings = @()
    foreach ($setting in $AdvancedSettings)
    {
        $settingString = $setting.Replace("[", "").Replace("]", "")
        $settingKey = $settingString.Split(",")[0]

        if ($settingKey -ne 'displayname')
        {
            $startPos = $settingString.IndexOf(",", 0) + 1
            $valueString = $settingString.Substring($startPos, $settingString.Length - $startPos).Trim()
            $values = $valueString.Split(",")

            $entry = @{
                Key   = $settingKey
                Value = $values
            }
            $settings += $entry
        }
    }
    return $settings
}
function Convert-CIMToAdvancedSettings
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    Param(
        [parameter(Mandatory = $true)]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $AdvancedSettings
    )

    $entry = @{ }
    foreach ($obj in $AdvancedSettings)
    {
        $settingsValues = ""
        foreach ($objVal in $obj.Value)
        {
            $settingsValues += $objVal
            $settingsValues += ","
        }
        $entry[$obj.Key] = $settingsValues.Substring(0, ($settingsValues.Length - 1))
    }

    return $entry
}

function Test-AdvancedSettings
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param(
        [Parameter (Mandatory = $true)]
        $DesiredProperty,

        [Parameter (Mandatory = $true)]
        $CurrentProperty
    )

    $foundSettings = $true
    foreach ($desiredSetting in $DesiredProperty)
    {
        $foundKey = $CurrentProperty | Where-Object { $_.Key -eq $desiredSetting.Key }
        if ($null -ne $foundKey)
        {
            if ($foundKey.Value.ToString() -ne $desiredSetting.Value.ToString())
            {
                $foundSettings = $false
                break;
            }
        }
    }

    Write-Verbose -Message "Test AdvancedSettings  returns $foundSettings"
    return $foundSettings
}

function ConvertTo-AdvancedSettingsString
{
    [CmdletBinding()]
    [OutputType([System.String])]
    param
    (
        [Parameter(Mandatory = $true)]
        $AdvancedSettings
    )

    $StringContent = "@(`r`n"
    foreach ($advancedSetting in $AdvancedSettings)
    {
        $StringContent += "                MSFT_SCLabelSetting`r`n"
        $StringContent += "                {`r`n"
        $StringContent += "                    Key   = '$($advancedSetting.Key.Replace("'", "''"))'`r`n"
        $StringContent += "                    Value = '$($advancedSetting.Value.Replace("'", "''"))'`r`n"
        $StringContent += "                }`r`n"
    }
    $StringContent += "            )"
    return $StringContent
}

function Convert-ArrayList
{
    [CmdletBinding()]
    [OutputType([System.Collections.ArrayList])]
    param(
        [Parameter ()]
        $CurrentProperty
    )
    [System.Collections.ArrayList]$currentItems = @()
    foreach ($currentProp in $CurrentProperty)
    {
        $currentItems.Add($currentProp.Name) | Out-Null
    }

    return $currentItems

}

function New-PolicyData
{
    [CmdletBinding()]
    [OutputType([System.Collections.ArrayList])]
    param(
        [Parameter ()]
        $configData,

        [Parameter ()]
        $currentData,

        [Parameter ()]
        $removedData,

        [Parameter ()]
        $additionalData
    )
    [System.Collections.ArrayList]$desiredData = @()
    foreach ($currItem in $currentData)
    {
        if (!$desiredData.Contains($currItem))
        {
            $desiredData.add($currItem) | Out-Null
        }
    }

    foreach ($currItem in $configData)
    {
        if (!$desiredData.Contains("$curritem"))
        {
            $desiredData.add($currItem) | Out-Null
        }
    }

    foreach ($currItem in $removedData)
    {
        $desiredData.remove($currItem) | Out-Null
    }

    foreach ($currItem in $additionalData)
    {
        if (!$desiredData.Contains("$curritem"))
        {
            $desiredData.add($currItem) | Out-Null
        }
    }

    return $desiredData
}


function Get-M365DSCIntuneDeviceConfigurationPolicyiOSAdditionalProperties
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param(
        [Parameter(Mandatory = 'true')]
        [System.Collections.Hashtable]
        $Properties
    )

    $results = @{"@odata.type" = "#microsoft.graph.iosGeneralDeviceConfiguration"}
    foreach ($property in $properties.Keys)
    {
        if ($property -ne 'Verbose')
        {
            $propertyName = $property[0].ToString().ToLower() + $property.Substring(1, $property.Length - 1)
            $propertyValue = $properties.$property
            $results.Add($propertyName, $propertyValue)
        }
    }
    return $results
}

Export-ModuleMember -Function *-TargetResource
