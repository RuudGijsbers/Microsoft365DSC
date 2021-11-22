function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [Parameter(Mandatory = $True)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleDeviceMode,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleOsEdition,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleOsVersion,

        [Parameter()]
        [System.String[]]
        $RoleScopeTagIds,

        [Parameter()]
        [System.Boolean]
        $AddingGameCenterFriendsBlocked,

        [Parameter()]
        [System.Boolean]
        $AirDropBlocked,

        [Parameter()]
        [System.Boolean]
        $AppleWatchBlockAutoUnlock,

        [Parameter()]
        [System.Boolean]
        $CameraBlocked,

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
        $ClassroomForceRequestPermissionToLeaveClasses,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceUnpromptedAppAndDeviceLock,

        [Parameter()]
        [System.String]
        $CompliantAppListType,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $CompliantAppsList,

        [Parameter()]
        [System.Boolean]
        $ContentCachingBlocked,

        [Parameter()]
        [System.Boolean]
        $DefinitionLookupBlocked,

        [Parameter()]
        [System.String]
        $EmailInDomainSuffixes,

        [Parameter()]
        [System.Boolean]
        $EraseContentAndSettingsBlocked,

        [Parameter()]
        [System.Boolean]
        $GameCenterBlocked,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockActivityContinuation,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockAddressBook,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockBookmarks,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockCalendar,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockDocumentSync,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockMail,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockNotes,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockPhotoLibrary,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockReminders,

        [Parameter()]
        [System.Boolean]
        $ITunesBlockFileSharing,

        [Parameter()]
        [System.Boolean]
        $ITunesBlockMusicService,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockDictation,

        [Parameter()]
        [System.Boolean]
        $KeychainBlockCloudSync,

        [Parameter()]
        [System.Boolean]
        $MultiplayerGamingBlocked,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockAirDropSharing,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockAutoFill,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockFingerprintUnlock,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockModification,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockProximityRequests,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockSimple,

        [Parameter()]
        [System.Int32]
        $PasswordExpirationDays,

        [Parameter()]
        [System.Int32]
        $PasswordMaximumAttemptCount,

        [Parameter()]
        [System.Int32]
        $PasswordMinimumCharacterSetCount,

        [Parameter()]
        [System.Int32]
        $PasswordMinimumLength,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesOfInactivityBeforeLock,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesOfInactivityBeforeScreenTimeout,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesUntilFailedLoginReset,

        [Parameter()]
        [System.Int32]
        $PasswordPreviousPasswordBlockCount,

        [Parameter()]
        [System.Boolean]
        $PasswordRequired,

        [Parameter()]
        [System.String]
        $PasswordRequiredType,

        [Parameter()]
        [System.String[]]
        $PrivacyAccessControls,

        [Parameter()]
        [System.Boolean]
        $SafariBlockAutofill,

        [Parameter()]
        [System.Boolean]
        $ScreenCaptureBlocked,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateMajorOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateMinorOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateNonOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdatesEnforcedDelayInDays,

        [Parameter()]
        [System.Boolean]
        $SpotlightBlockInternetResults,

        [Parameter()]
        [System.String]
        $UpdateDelayPolicy,

        [Parameter()]
        [System.Boolean]
        $WallpaperModificationBlocked,

        [Parameter(Mandatory = $True)]
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
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace "MSFT_", ""
    $CommandName  = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
    Add-M365DSCTelemetryEvent -Data $data
    #endregion#>

    $nullResult = $PSBoundParameters
    $nullResult.Ensure = 'Absent'

    try
    {
        $policy = Get-MGDeviceManagementDeviceConfiguration -Filter "displayName eq '$DisplayName'" `
            -ErrorAction Stop | Where-Object -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.macOSGeneralDeviceConfiguration' }

        if ($null -eq $policy)
        {
            Write-Verbose -Message "No Device Configuration Policy {$DisplayName} was found"
            return $nullResult
        }

        $AdditionalProperties = $policy.AdditionalProperties
        [Array]$CompliantAppsList = $policy.AdditionalProperties.compliantAppsList | ConvertTo-Json | ConvertFrom-Json


        Write-Verbose -Message "Found Device Configuration Policy {$DisplayName}"
        $results = @{
            DisplayName                                             = $policy.DisplayName
            Description                                             = $policy.Description
            AddingGameCenterFriendsBlocked                          = $AdditionalProperties.addingGameCenterFriendsBlocked
            AirDropBlocked                                          = $AdditionalProperties.airDropBlocked
            AppleWatchBlockAutoUnlock                               = $AdditionalProperties.appleWatchBlockAutoUnlock
            CameraBlocked                                  	        = $AdditionalProperties.cameraBlocked
            ClassroomAppBlockRemoteScreenObservation      	        = $AdditionalProperties.classroomAppBlockRemoteScreenObservation
            ClassroomAppForceUnpromptedScreenObservation  	        = $AdditionalProperties.classroomAppForceUnpromptedScreenObservation
            ClassroomForceAutomaticallyJoinClasses        	        = $AdditionalProperties.classroomForceAutomaticallyJoinClasses
            ClassroomForceRequestPermissionToLeaveClasses  	        = $AdditionalProperties.classroomForceRequestPermissionToLeaveClasses
            ClassroomForceUnpromptedAppAndDeviceLock      	        = $AdditionalProperties.classroomForceUnpromptedAppAndDeviceLock
            CompliantAppListType                          	        = $AdditionalProperties.compliantAppListType
            CompliantAppsList                              	        = $CompliantAppsList
            ContentCachingBlocked                          	        = $AdditionalProperties.contentCachingBlocked
            DefinitionLookupBlocked                        	        = $AdditionalProperties.definitionLookupBlocked
            EmailInDomainSuffixes                          	        = $AdditionalProperties.emailInDomainSuffixes
            EraseContentAndSettingsBlocked                	        = $AdditionalProperties.eraseContentAndSettingsBlocked
            GameCenterBlocked                              	        = $AdditionalProperties.gameCenterBlocked
            iCloudBlockActivityContinuation                	        = $AdditionalProperties.iCloudBlockActivityContinuation
            iCloudBlockAddressBook                        	        = $AdditionalProperties.iCloudBlockAddressBook
            iCloudBlockBookmarks                          	        = $AdditionalProperties.iCloudBlockBookmarks
            iCloudBlockCalendar                            	        = $AdditionalProperties.iCloudBlockCalendar
            iCloudBlockDocumentSync                        	        = $AdditionalProperties.iCloudBlockDocumentSync
            iCloudBlockMail                                	        = $AdditionalProperties.iCloudBlockMail
            iCloudBlockNotes                              	        = $AdditionalProperties.iCloudBlockNotes
            iCloudBlockPhotoLibrary                        	        = $AdditionalProperties.iCloudBlockPhotoLibrary
            iCloudBlockReminders                          	        = $AdditionalProperties.iCloudBlockReminders
            iTunesBlockFileSharing                        	        = $AdditionalProperties.iTunesBlockFileSharing
            iTunesBlockMusicService                        	        = $AdditionalProperties.iTunesBlockMusicService
            KeyboardBlockDictation                        	        = $AdditionalProperties.keyboardBlockDictation
            KeychainBlockCloudSync                        	        = $AdditionalProperties.keychainBlockCloudSync
            MultiplayerGamingBlocked                      	        = $AdditionalProperties.multiplayerGamingBlocked
            PasswordBlockAirDropSharing                    	        = $AdditionalProperties.passwordBlockAirDropSharing
            PasswordBlockAutoFill                          	        = $AdditionalProperties.passwordBlockAutoFill
            PasswordBlockFingerprintUnlock                	        = $AdditionalProperties.passwordBlockFingerprintUnlock
            PasswordBlockModification                      	        = $AdditionalProperties.passwordBlockModification
            PasswordBlockProximityRequests                	        = $AdditionalProperties.passwordBlockProximityRequests
            PasswordBlockSimple                            	        = $AdditionalProperties.passwordBlockSimple
            PasswordExpirationDays                                  = $AdditionalProperties.passwordExpirationDays
            PasswordMaximumAttemptCount                    	        = $AdditionalProperties.passwordMaximumAttemptCount
            PasswordMinimumLength                          	        = $AdditionalProperties.passwordMinimumLength
            PasswordMinutesOfInactivityBeforeLock          	        = $AdditionalProperties.passwordMinutesOfInactivityBeforeLock
            PasswordMinutesOfInactivityBeforeScreenTimeout	        = $AdditionalProperties.passwordMinutesOfInactivityBeforeScreenTimeout
            PasswordMinutesUntilFailedLoginReset          	        = $AdditionalProperties.passwordMinutesUntilFailedLoginReset
            PasswordPreviousPasswordBlockCount            	        = $AdditionalProperties.passwordPreviousPasswordBlockCount
            PasswordRequired                              	        = $AdditionalProperties.passwordRequired
            PasswordRequiredType                          	        = $AdditionalProperties.passwordRequiredType
            PrivacyAccessControls                          	        = $AdditionalProperties.privacyAccessControls
            SafariBlockAutofill                            	        = $AdditionalProperties.safariBlockAutofill
            ScreenCaptureBlocked                          	        = $AdditionalProperties.screenCaptureBlocked
            SoftwareUpdateNonOSDeferredInstallDelayInDays  	        = $AdditionalProperties.softwareUpdateNonOSDeferredInstallDelayInDays
            SoftwareUpdatesEnforcedDelayInDays            	        = $AdditionalProperties.softwareUpdatesEnforcedDelayInDays
            SpotlightBlockInternetResults                  	        = $AdditionalProperties.spotlightBlockInternetResults
            UpdateDelayPolicy                              	        = $AdditionalProperties.updateDelayPolicy
            WallpaperModificationBlocked                  	        = $AdditionalProperties.wallpaperModificationBlocked
            RoleScopeTagIds                                         = $policy.RoleScopeTagIds
            Ensure                                                  = "Present"
            Credential                                              = $Credential
            ApplicationId                                           = $ApplicationId
            TenantId                                                = $TenantId
            ApplicationSecret                                       = $ApplicationSecret
            CertificateThumbprint                                   = $CertificateThumbprint
        }
        return [System.Collections.Hashtable] $results
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
        [Parameter(Mandatory = $True)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleDeviceMode,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleOsEdition,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleOsVersion,

        [Parameter()]
        [System.String[]]
        $RoleScopeTagIds,

        [Parameter()]
        [System.Boolean]
        $AddingGameCenterFriendsBlocked,

        [Parameter()]
        [System.Boolean]
        $AirDropBlocked,

        [Parameter()]
        [System.Boolean]
        $AppleWatchBlockAutoUnlock,

        [Parameter()]
        [System.Boolean]
        $CameraBlocked,

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
        $ClassroomForceRequestPermissionToLeaveClasses,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceUnpromptedAppAndDeviceLock,

        [Parameter()]
        [System.String]
        $CompliantAppListType,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $CompliantAppsList,

        [Parameter()]
        [System.Boolean]
        $ContentCachingBlocked,

        [Parameter()]
        [System.Boolean]
        $DefinitionLookupBlocked,

        [Parameter()]
        [System.String]
        $EmailInDomainSuffixes,

        [Parameter()]
        [System.Boolean]
        $EraseContentAndSettingsBlocked,

        [Parameter()]
        [System.Boolean]
        $GameCenterBlocked,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockActivityContinuation,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockAddressBook,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockBookmarks,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockCalendar,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockDocumentSync,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockMail,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockNotes,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockPhotoLibrary,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockReminders,

        [Parameter()]
        [System.Boolean]
        $ITunesBlockFileSharing,

        [Parameter()]
        [System.Boolean]
        $ITunesBlockMusicService,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockDictation,

        [Parameter()]
        [System.Boolean]
        $KeychainBlockCloudSync,

        [Parameter()]
        [System.Boolean]
        $MultiplayerGamingBlocked,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockAirDropSharing,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockAutoFill,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockFingerprintUnlock,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockModification,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockProximityRequests,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockSimple,

        [Parameter()]
        [System.Int32]
        $PasswordExpirationDays,

        [Parameter()]
        [System.Int32]
        $PasswordMaximumAttemptCount,

        [Parameter()]
        [System.Int32]
        $PasswordMinimumCharacterSetCount,

        [Parameter()]
        [System.Int32]
        $PasswordMinimumLength,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesOfInactivityBeforeLock,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesOfInactivityBeforeScreenTimeout,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesUntilFailedLoginReset,

        [Parameter()]
        [System.Int32]
        $PasswordPreviousPasswordBlockCount,

        [Parameter()]
        [System.Boolean]
        $PasswordRequired,

        [Parameter()]
        [System.String]
        $PasswordRequiredType,

        [Parameter()]
        [System.String[]]
        $PrivacyAccessControls,

        [Parameter()]
        [System.Boolean]
        $SafariBlockAutofill,

        [Parameter()]
        [System.Boolean]
        $ScreenCaptureBlocked,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateMajorOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateMinorOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateNonOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdatesEnforcedDelayInDays,

        [Parameter()]
        [System.Boolean]
        $SpotlightBlockInternetResults,

        [Parameter()]
        [System.String]
        $UpdateDelayPolicy,

        [Parameter()]
        [System.Boolean]
        $WallpaperModificationBlocked,

        [Parameter(Mandatory = $True)]
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
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace "MSFT_", ""
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
    if ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Absent')
    {
        Write-Verbose -Message "Creating new Device Configuration Policy {$DisplayName}"
        $PSBoundParameters.Remove('DisplayName') | Out-Null
        $PSBoundParameters.Remove('Description') | Out-Null
        $AdditionalProperties = $PSBoundParameters.AdditionalProperties

        New-MGDeviceManagementDeviceConfiguration -DisplayName $DisplayName `
            -Description $Description `
            -AdditionalProperties $AdditionalProperties
    }
    elseif ($Ensure -eq 'Present' -and $currentPolicy.Ensure -eq 'Present')
    {
        Write-Verbose -Message "Updating existing Device Configuration Policy {$DisplayName}"
        $configDevicePolicy = Get-MGDeviceManagementDeviceConfiguration `
            -ErrorAction Stop | Where-Object `
            -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.macOSGeneralDeviceConfiguration' -and `
                $_.displayName -eq $($DisplayName) }

        $PSBoundParameters.Remove('DisplayName') | Out-Null
        $PSBoundParameters.Remove('Description') | Out-Null
        $AdditionalProperties = $PSBoundParameters.AdditionalProperties
        Update-MGDeviceManagementDeviceConfiguration -AdditionalProperties $AdditionalProperties `
            -Description $Description `
            -DeviceConfigurationId $configDevicePolicy.Id
    }
    elseif ($Ensure -eq 'Absent' -and $currentPolicy.Ensure -eq 'Present')
    {
        Write-Verbose -Message "Removing Device Configuration Policy {$DisplayName}"
        $configDevicePolicy = Get-MGDeviceManagementDeviceConfiguration `
        -ErrorAction Stop | Where-Object `
        -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.macOSGeneralDeviceConfiguration' -and `
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
        [Parameter(Mandatory = $True)]
        [System.String]
        $DisplayName,

        [Parameter()]
        [System.String]
        $Description,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleDeviceMode,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleOsEdition,

        [Parameter()]
        [System.String]
        $DeviceManagementApplicabilityRuleOsVersion,

        [Parameter()]
        [System.String[]]
        $RoleScopeTagIds,

        [Parameter()]
        [System.Boolean]
        $AddingGameCenterFriendsBlocked,

        [Parameter()]
        [System.Boolean]
        $AirDropBlocked,

        [Parameter()]
        [System.Boolean]
        $AppleWatchBlockAutoUnlock,

        [Parameter()]
        [System.Boolean]
        $CameraBlocked,

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
        $ClassroomForceRequestPermissionToLeaveClasses,

        [Parameter()]
        [System.Boolean]
        $ClassroomForceUnpromptedAppAndDeviceLock,

        [Parameter()]
        [System.String]
        $CompliantAppListType,

        [Parameter()]
        [Microsoft.Management.Infrastructure.CimInstance[]]
        $CompliantAppsList,

        [Parameter()]
        [System.Boolean]
        $ContentCachingBlocked,

        [Parameter()]
        [System.Boolean]
        $DefinitionLookupBlocked,

        [Parameter()]
        [System.String]
        $EmailInDomainSuffixes,

        [Parameter()]
        [System.Boolean]
        $EraseContentAndSettingsBlocked,

        [Parameter()]
        [System.Boolean]
        $GameCenterBlocked,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockActivityContinuation,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockAddressBook,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockBookmarks,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockCalendar,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockDocumentSync,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockMail,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockNotes,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockPhotoLibrary,

        [Parameter()]
        [System.Boolean]
        $ICloudBlockReminders,

        [Parameter()]
        [System.Boolean]
        $ITunesBlockFileSharing,

        [Parameter()]
        [System.Boolean]
        $ITunesBlockMusicService,

        [Parameter()]
        [System.Boolean]
        $KeyboardBlockDictation,

        [Parameter()]
        [System.Boolean]
        $KeychainBlockCloudSync,

        [Parameter()]
        [System.Boolean]
        $MultiplayerGamingBlocked,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockAirDropSharing,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockAutoFill,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockFingerprintUnlock,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockModification,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockProximityRequests,

        [Parameter()]
        [System.Boolean]
        $PasswordBlockSimple,

        [Parameter()]
        [System.Int32]
        $PasswordExpirationDays,

        [Parameter()]
        [System.Int32]
        $PasswordMaximumAttemptCount,

        [Parameter()]
        [System.Int32]
        $PasswordMinimumCharacterSetCount,

        [Parameter()]
        [System.Int32]
        $PasswordMinimumLength,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesOfInactivityBeforeLock,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesOfInactivityBeforeScreenTimeout,

        [Parameter()]
        [System.Int32]
        $PasswordMinutesUntilFailedLoginReset,

        [Parameter()]
        [System.Int32]
        $PasswordPreviousPasswordBlockCount,

        [Parameter()]
        [System.Boolean]
        $PasswordRequired,

        [Parameter()]
        [System.String]
        $PasswordRequiredType,

        [Parameter()]
        [System.String[]]
        $PrivacyAccessControls,

        [Parameter()]
        [System.Boolean]
        $SafariBlockAutofill,

        [Parameter()]
        [System.Boolean]
        $ScreenCaptureBlocked,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateMajorOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateMinorOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdateNonOSDeferredInstallDelayInDays,

        [Parameter()]
        [System.Int32]
        $SoftwareUpdatesEnforcedDelayInDays,

        [Parameter()]
        [System.Boolean]
        $SpotlightBlockInternetResults,

        [Parameter()]
        [System.String]
        $UpdateDelayPolicy,

        [Parameter()]
        [System.Boolean]
        $WallpaperModificationBlocked,

        [Parameter(Mandatory = $True)]
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
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace "MSFT_", ""
    $CommandName  = $MyInvocation.MyCommand
    $data = Format-M365DSCTelemetryParameters -ResourceName $ResourceName `
        -CommandName $CommandName `
        -Parameters $PSBoundParameters
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
    Select-MGProfile -Name 'Beta' | Out-Null

    #region Telemetry
    $ResourceName = $MyInvocation.MyCommand.ModuleName -replace "MSFT_", ""
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
            -FilterScript { $_.AdditionalProperties.'@odata.type' -eq '#microsoft.graph.macOSGeneralDeviceConfiguration' }
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
            Write-Host "    |---[$i/$($policies.Count)] $($policy.DisplayName)" -NoNewline
            $params = @{
                DisplayName           = $policy.DisplayName
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
        Write-Host $Global:M365DSCEmojiRedX
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

Export-ModuleMember -Function *-TargetResource
