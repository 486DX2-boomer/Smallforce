"
I represent a User object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_user.htm
"
Class {
	#name : #User,
	#superclass : #SObject,
	#instVars : [
		'AboutMe',
		'AccountId',
		'Address',
		'Alias',
		'BadgeText',
		'BannerPhotUrl',
		'CallCenterId',
		'City',
		'CommunityNickname',
		'CompanyName',
		'ContactId',
		'Country',
		'CountryCode',
		'CurrentStatus',
		'DefaultCurrencyIsoCode',
		'DefaultDivision',
		'DefaultGroupNotificationFrequency',
		'DelegatedApproverId',
		'Department',
		'DigestFrequency',
		'Division',
		'Email',
		'EmailEncodingKey',
		'EmailPreferencesAutoBcc',
		'EmployeeNumber',
		'Extension',
		'Fax',
		'FederationIdentifier',
		'FirstName',
		'ForecastEnabled',
		'FullPhotoUrl',
		'GeocodeAccuracy',
		'IndividualId',
		'IsActive',
		'IsPartner',
		'IsPortalEnabled',
		'IsPortalSelfRegistered',
		'IsPrmSuperUser',
		'IsProfilePhotoActive',
		'JigsawImportLimitOverride',
		'LanguageLocaleKey',
		'LastLoginDate',
		'LastName',
		'LastReferencedDate',
		'LastViewedDate',
		'Latitude',
		'LocaleSidKey',
		'Longitude',
		'Manager',
		'ManagerId',
		'MediumBannerPhotoUrl',
		'MiddleName',
		'MobilePhone',
		'Name',
		'NumberOfFailedLogins',
		'OfflineTrialExpirationDate',
		'Phone',
		'PortalRole',
		'PostalCode',
		'ProfileId',
		'ReceivesAdminInfoEmails',
		'ReceivesInfoEmails',
		'SenderEmail',
		'SenderName',
		'Signature',
		'SmallBannerPhotoUrl',
		'SmallPhotoUrl',
		'State',
		'StateCode',
		'Street',
		'Suffix',
		'TimeZoneSidKey',
		'Title',
		'Username',
		'UserPermissionsCallCenterAutoLogin',
		'UserPermissionsChatterAnswersUser',
		'UserPermissionsInteractionUser',
		'UserPermissionsJigsawProspectingUser',
		'UserPermissionsKnowledgeUser',
		'UserPermissionsLiveAgentUser',
		'UserPermissionsMarketingUser',
		'UserPermissionsOfflineUser',
		'UserPermissionsSFContentUser',
		'UserPermissionsSiteforceContributorUser',
		'UserPermissionsSiteforcePublisherUser',
		'UserPermissionsSupportUser',
		'UserPermissionsWirelessUser',
		'UserPermissionsWorkDotComUserFeature',
		'UserPreferencesActivityRemindersPopup',
		'UserPreferencesAllowConversationReminders',
		'UserPreferencesApexPagesDeveloperMode',
		'UserPreferencesAutoForwardCall',
		'UserPreferencesContentEmailAsAndWhen',
		'UserPreferencesContentNoEmail',
		'UserPreferencesEnableAutoSubForFeeds',
		'UserPreferencesDisableAllFeedsEmail',
		'UserPreferencesDisableAutoSubForFeeds',
		'UserPreferencesDisableBookmarkEmail',
		'UserPreferencesDisableChangeCommentEmail',
		'UserPreferencesDisableEndorsementEmail',
		'UserPreferencesDisableFileShareNotificationsForApi',
		'UserPreferencesDisableFollowersEmail',
		'UserPreferencesDisableLaterCommentEmail',
		'UserPreferencesDisableLikeEmail',
		'UserPreferencesDisableMentionsPostEmail',
		'UserPreferencesDisableProfilePostEmail',
		'UserPreferencesDisableSharePostEmail',
		'UserPreferencesDisableFeedbackEmail',
		'UserPreferencesDisCommentAfterLikeEmail',
		'UserPreferencesDisMentionsCommentEmail',
		'UserPreferencesDisableMessageEmail',
		'UserPreferencesDisableRewardEmail',
		'UserPreferencesDisableWorkEmail',
		'UserPreferencesDisProfPostCommentEmail',
		'UserPreferencesEmailVerified',
		'UserPreferencesEnableVoiceCallRecording',
		'UserPreferencesEnableVoiceLocalPresence',
		'UserPreferencesEventRemindersCheckboxDefault',
		'UserPreferencesHideBiggerPhotoCallout',
		'UserPreferencesHideChatterOnboardingSplash',
		'UserPreferencesHideCSNDesktopTask',
		'UserPreferencesHideCSNGetChatterMobileTask',
		'UserPreferencesHideEndUserOnboardingAssistantModal',
		'UserPreferencesHideLightningMigrationModal',
		'UserPreferencesHideSecondChatterOnboardingSplash',
		'UserPreferencesHideS1BrowserUI',
		'UserPreferencesHideSfxWelcomeMat',
		'UserPreferencesJigsawListUser',
		'UserPreferencesLightningExperiencePreferred',
		'UserPreferencesLiveAgentMiawSetupDeflection',
		'UserPreferencesNativeEmailClient',
		'UserPreferencesOptOutOfTouch',
		'UserPreferencesOutboundBridge',
		'UserPreferencesPathAssistantCollapsed',
		'UserPreferencesProcessAssistantCollapsed',
		'UserPreferencesReceiveNoNotificationsAsApprover',
		'UserPreferencesReceiveNotificationsAsDelegatedApprover',
		'UserPreferencesReminderSoundOff',
		'UserPreferencesShowCityToExternalUsers',
		'UserPreferencesShowCityToGuestUsers',
		'UserPreferencesShowCountryToExternalUsers',
		'UserPreferencesShowCountryToGuestUsers',
		'UserPreferencesShowEmailToExternalUsers',
		'UserPreferencesShowEmailToGuestUsers',
		'UserPreferencesShowFaxToExternalUsers',
		'UserPreferencesShowFaxToGuestUsers',
		'UserPreferencesShowManagerToExternalUsers',
		'UserPreferencesShowManagerToGuestUsers',
		'UserPreferencesShowMobilePhoneToExternalUsers',
		'UserPreferencesShowMobilePhoneToGuestUsers',
		'UserPreferencesShowPostalCodeToExternalUsers',
		'UserPreferencesShowPostalCodeToGuestUsers',
		'UserPreferencesShowProfilePicToGuestUsers',
		'UserPreferencesShowStateToExternalUsers',
		'UserPreferencesShowStateToGuestUsers',
		'UserPreferencesShowStreetAddressToExternalUsers',
		'UserPreferencesShowStreetAddressToGuestUsers',
		'UserPreferencesShowTitleToExternalUsers',
		'UserPreferencesShowTitleToGuestUsers',
		'UserPreferencesShowWorkPhoneToExternalUsers',
		'UserPreferencesShowWorkPhoneToGuestUsers',
		'UserPreferencesSortFeedByComment',
		'UserPreferencesSuppressEventSFXReminders',
		'UserPreferencesSuppressTaskSFXReminders',
		'UserPreferencesTaskRemindersCheckboxDefault',
		'UserPreferencesUserDebugModePref',
		'UserRoleId',
		'UserType',
		'WirelessEmail'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
User >> AboutMe [

	^ AboutMe
]

{ #category : #accessing }
User >> AboutMe: anObject [

	AboutMe := anObject
]

{ #category : #accessing }
User >> AccountId [

	^ AccountId
]

{ #category : #accessing }
User >> AccountId: anObject [

	AccountId := anObject
]

{ #category : #accessing }
User >> Address [

	^ Address
]

{ #category : #accessing }
User >> Address: anObject [

	Address := anObject
]

{ #category : #accessing }
User >> Alias [

	^ Alias
]

{ #category : #accessing }
User >> Alias: anObject [

	Alias := anObject
]

{ #category : #accessing }
User >> BadgeText [

	^ BadgeText
]

{ #category : #accessing }
User >> BadgeText: anObject [

	BadgeText := anObject
]

{ #category : #accessing }
User >> BannerPhotUrl [

	^ BannerPhotUrl
]

{ #category : #accessing }
User >> BannerPhotUrl: anObject [

	BannerPhotUrl := anObject
]

{ #category : #accessing }
User >> CallCenterId [

	^ CallCenterId
]

{ #category : #accessing }
User >> CallCenterId: anObject [

	CallCenterId := anObject
]

{ #category : #accessing }
User >> City [

	^ City
]

{ #category : #accessing }
User >> City: anObject [

	City := anObject
]

{ #category : #accessing }
User >> CommunityNickname [

	^ CommunityNickname
]

{ #category : #accessing }
User >> CommunityNickname: anObject [

	CommunityNickname := anObject
]

{ #category : #accessing }
User >> CompanyName [

	^ CompanyName
]

{ #category : #accessing }
User >> CompanyName: anObject [

	CompanyName := anObject
]

{ #category : #accessing }
User >> ContactId [

	^ ContactId
]

{ #category : #accessing }
User >> ContactId: anObject [

	ContactId := anObject
]

{ #category : #accessing }
User >> Country [

	^ Country
]

{ #category : #accessing }
User >> Country: anObject [

	Country := anObject
]

{ #category : #accessing }
User >> CountryCode [

	^ CountryCode
]

{ #category : #accessing }
User >> CountryCode: anObject [

	CountryCode := anObject
]

{ #category : #accessing }
User >> CurrentStatus [

	^ CurrentStatus
]

{ #category : #accessing }
User >> CurrentStatus: anObject [

	CurrentStatus := anObject
]

{ #category : #accessing }
User >> DefaultCurrencyIsoCode [

	^ DefaultCurrencyIsoCode
]

{ #category : #accessing }
User >> DefaultCurrencyIsoCode: anObject [

	DefaultCurrencyIsoCode := anObject
]

{ #category : #accessing }
User >> DefaultDivision [

	^ DefaultDivision
]

{ #category : #accessing }
User >> DefaultDivision: anObject [

	DefaultDivision := anObject
]

{ #category : #accessing }
User >> DefaultGroupNotificationFrequency [

	^ DefaultGroupNotificationFrequency
]

{ #category : #accessing }
User >> DefaultGroupNotificationFrequency: anObject [

	DefaultGroupNotificationFrequency := anObject
]

{ #category : #accessing }
User >> DelegatedApproverId [

	^ DelegatedApproverId
]

{ #category : #accessing }
User >> DelegatedApproverId: anObject [

	DelegatedApproverId := anObject
]

{ #category : #accessing }
User >> Department [

	^ Department
]

{ #category : #accessing }
User >> Department: anObject [

	Department := anObject
]

{ #category : #accessing }
User >> DigestFrequency [

	^ DigestFrequency
]

{ #category : #accessing }
User >> DigestFrequency: anObject [

	DigestFrequency := anObject
]

{ #category : #accessing }
User >> Division [

	^ Division
]

{ #category : #accessing }
User >> Division: anObject [

	Division := anObject
]

{ #category : #accessing }
User >> Email [

	^ Email
]

{ #category : #accessing }
User >> Email: anObject [

	Email := anObject
]

{ #category : #accessing }
User >> EmailEncodingKey [

	^ EmailEncodingKey
]

{ #category : #accessing }
User >> EmailEncodingKey: anObject [

	EmailEncodingKey := anObject
]

{ #category : #accessing }
User >> EmailPreferencesAutoBcc [

	^ EmailPreferencesAutoBcc
]

{ #category : #accessing }
User >> EmailPreferencesAutoBcc: anObject [

	EmailPreferencesAutoBcc := anObject
]

{ #category : #accessing }
User >> EmployeeNumber [

	^ EmployeeNumber
]

{ #category : #accessing }
User >> EmployeeNumber: anObject [

	EmployeeNumber := anObject
]

{ #category : #accessing }
User >> Extension [

	^ Extension
]

{ #category : #accessing }
User >> Extension: anObject [

	Extension := anObject
]

{ #category : #accessing }
User >> Fax [

	^ Fax
]

{ #category : #accessing }
User >> Fax: anObject [

	Fax := anObject
]

{ #category : #accessing }
User >> FederationIdentifier [

	^ FederationIdentifier
]

{ #category : #accessing }
User >> FederationIdentifier: anObject [

	FederationIdentifier := anObject
]

{ #category : #accessing }
User >> FirstName [

	^ FirstName
]

{ #category : #accessing }
User >> FirstName: anObject [

	FirstName := anObject
]

{ #category : #accessing }
User >> ForecastEnabled [

	^ ForecastEnabled
]

{ #category : #accessing }
User >> ForecastEnabled: anObject [

	ForecastEnabled := anObject
]

{ #category : #accessing }
User >> FullPhotoUrl [

	^ FullPhotoUrl
]

{ #category : #accessing }
User >> FullPhotoUrl: anObject [

	FullPhotoUrl := anObject
]

{ #category : #accessing }
User >> GeocodeAccuracy [

	^ GeocodeAccuracy
]

{ #category : #accessing }
User >> GeocodeAccuracy: anObject [

	GeocodeAccuracy := anObject
]

{ #category : #accessing }
User >> IndividualId [

	^ IndividualId
]

{ #category : #accessing }
User >> IndividualId: anObject [

	IndividualId := anObject
]

{ #category : #accessing }
User >> IsActive [

	^ IsActive
]

{ #category : #accessing }
User >> IsActive: anObject [

	IsActive := anObject
]

{ #category : #accessing }
User >> IsPartner [

	^ IsPartner
]

{ #category : #accessing }
User >> IsPartner: anObject [

	IsPartner := anObject
]

{ #category : #accessing }
User >> IsPortalEnabled [

	^ IsPortalEnabled
]

{ #category : #accessing }
User >> IsPortalEnabled: anObject [

	IsPortalEnabled := anObject
]

{ #category : #accessing }
User >> IsPortalSelfRegistered [

	^ IsPortalSelfRegistered
]

{ #category : #accessing }
User >> IsPortalSelfRegistered: anObject [

	IsPortalSelfRegistered := anObject
]

{ #category : #accessing }
User >> IsPrmSuperUser [

	^ IsPrmSuperUser
]

{ #category : #accessing }
User >> IsPrmSuperUser: anObject [

	IsPrmSuperUser := anObject
]

{ #category : #accessing }
User >> IsProfilePhotoActive [

	^ IsProfilePhotoActive
]

{ #category : #accessing }
User >> IsProfilePhotoActive: anObject [

	IsProfilePhotoActive := anObject
]

{ #category : #accessing }
User >> JigsawImportLimitOverride [

	^ JigsawImportLimitOverride
]

{ #category : #accessing }
User >> JigsawImportLimitOverride: anObject [

	JigsawImportLimitOverride := anObject
]

{ #category : #accessing }
User >> LanguageLocaleKey [

	^ LanguageLocaleKey
]

{ #category : #accessing }
User >> LanguageLocaleKey: anObject [

	LanguageLocaleKey := anObject
]

{ #category : #accessing }
User >> LastLoginDate [

	^ LastLoginDate
]

{ #category : #accessing }
User >> LastLoginDate: anObject [

	LastLoginDate := anObject
]

{ #category : #accessing }
User >> LastName [

	^ LastName
]

{ #category : #accessing }
User >> LastName: anObject [

	LastName := anObject
]

{ #category : #accessing }
User >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
User >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
User >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
User >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
User >> Latitude [

	^ Latitude
]

{ #category : #accessing }
User >> Latitude: anObject [

	Latitude := anObject
]

{ #category : #accessing }
User >> LocaleSidKey [

	^ LocaleSidKey
]

{ #category : #accessing }
User >> LocaleSidKey: anObject [

	LocaleSidKey := anObject
]

{ #category : #accessing }
User >> Longitude [

	^ Longitude
]

{ #category : #accessing }
User >> Longitude: anObject [

	Longitude := anObject
]

{ #category : #accessing }
User >> Manager [

	^ Manager
]

{ #category : #accessing }
User >> Manager: anObject [

	Manager := anObject
]

{ #category : #accessing }
User >> ManagerId [

	^ ManagerId
]

{ #category : #accessing }
User >> ManagerId: anObject [

	ManagerId := anObject
]

{ #category : #accessing }
User >> MediumBannerPhotoUrl [

	^ MediumBannerPhotoUrl
]

{ #category : #accessing }
User >> MediumBannerPhotoUrl: anObject [

	MediumBannerPhotoUrl := anObject
]

{ #category : #accessing }
User >> MiddleName [

	^ MiddleName
]

{ #category : #accessing }
User >> MiddleName: anObject [

	MiddleName := anObject
]

{ #category : #accessing }
User >> MobilePhone [

	^ MobilePhone
]

{ #category : #accessing }
User >> MobilePhone: anObject [

	MobilePhone := anObject
]

{ #category : #accessing }
User >> Name [

	^ Name
]

{ #category : #accessing }
User >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
User >> NumberOfFailedLogins [

	^ NumberOfFailedLogins
]

{ #category : #accessing }
User >> NumberOfFailedLogins: anObject [

	NumberOfFailedLogins := anObject
]

{ #category : #accessing }
User >> OfflineTrialExpirationDate [

	^ OfflineTrialExpirationDate
]

{ #category : #accessing }
User >> OfflineTrialExpirationDate: anObject [

	OfflineTrialExpirationDate := anObject
]

{ #category : #accessing }
User >> Phone [

	^ Phone
]

{ #category : #accessing }
User >> Phone: anObject [

	Phone := anObject
]

{ #category : #accessing }
User >> PortalRole [

	^ PortalRole
]

{ #category : #accessing }
User >> PortalRole: anObject [

	PortalRole := anObject
]

{ #category : #accessing }
User >> PostalCode [

	^ PostalCode
]

{ #category : #accessing }
User >> PostalCode: anObject [

	PostalCode := anObject
]

{ #category : #accessing }
User >> ProfileId [

	^ ProfileId
]

{ #category : #accessing }
User >> ProfileId: anObject [

	ProfileId := anObject
]

{ #category : #accessing }
User >> ReceivesAdminInfoEmails [

	^ ReceivesAdminInfoEmails
]

{ #category : #accessing }
User >> ReceivesAdminInfoEmails: anObject [

	ReceivesAdminInfoEmails := anObject
]

{ #category : #accessing }
User >> ReceivesInfoEmails [

	^ ReceivesInfoEmails
]

{ #category : #accessing }
User >> ReceivesInfoEmails: anObject [

	ReceivesInfoEmails := anObject
]

{ #category : #accessing }
User >> SenderEmail [

	^ SenderEmail
]

{ #category : #accessing }
User >> SenderEmail: anObject [

	SenderEmail := anObject
]

{ #category : #accessing }
User >> SenderName [

	^ SenderName
]

{ #category : #accessing }
User >> SenderName: anObject [

	SenderName := anObject
]

{ #category : #accessing }
User >> Signature [

	^ Signature
]

{ #category : #accessing }
User >> Signature: anObject [

	Signature := anObject
]

{ #category : #accessing }
User >> SmallBannerPhotoUrl [

	^ SmallBannerPhotoUrl
]

{ #category : #accessing }
User >> SmallBannerPhotoUrl: anObject [

	SmallBannerPhotoUrl := anObject
]

{ #category : #accessing }
User >> SmallPhotoUrl [

	^ SmallPhotoUrl
]

{ #category : #accessing }
User >> SmallPhotoUrl: anObject [

	SmallPhotoUrl := anObject
]

{ #category : #accessing }
User >> State [

	^ State
]

{ #category : #accessing }
User >> State: anObject [

	State := anObject
]

{ #category : #accessing }
User >> StateCode [

	^ StateCode
]

{ #category : #accessing }
User >> StateCode: anObject [

	StateCode := anObject
]

{ #category : #accessing }
User >> Street [

	^ Street
]

{ #category : #accessing }
User >> Street: anObject [

	Street := anObject
]

{ #category : #accessing }
User >> Suffix [

	^ Suffix
]

{ #category : #accessing }
User >> Suffix: anObject [

	Suffix := anObject
]

{ #category : #accessing }
User >> TimeZoneSidKey [

	^ TimeZoneSidKey
]

{ #category : #accessing }
User >> TimeZoneSidKey: anObject [

	TimeZoneSidKey := anObject
]

{ #category : #accessing }
User >> Title [

	^ Title
]

{ #category : #accessing }
User >> Title: anObject [

	Title := anObject
]

{ #category : #accessing }
User >> UserPermissionsCallCenterAutoLogin [

	^ UserPermissionsCallCenterAutoLogin
]

{ #category : #accessing }
User >> UserPermissionsCallCenterAutoLogin: anObject [

	UserPermissionsCallCenterAutoLogin := anObject
]

{ #category : #accessing }
User >> UserPermissionsChatterAnswersUser [

	^ UserPermissionsChatterAnswersUser
]

{ #category : #accessing }
User >> UserPermissionsChatterAnswersUser: anObject [

	UserPermissionsChatterAnswersUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsInteractionUser [

	^ UserPermissionsInteractionUser
]

{ #category : #accessing }
User >> UserPermissionsInteractionUser: anObject [

	UserPermissionsInteractionUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsJigsawProspectingUser [

	^ UserPermissionsJigsawProspectingUser
]

{ #category : #accessing }
User >> UserPermissionsJigsawProspectingUser: anObject [

	UserPermissionsJigsawProspectingUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsKnowledgeUser [

	^ UserPermissionsKnowledgeUser
]

{ #category : #accessing }
User >> UserPermissionsKnowledgeUser: anObject [

	UserPermissionsKnowledgeUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsLiveAgentUser [

	^ UserPermissionsLiveAgentUser
]

{ #category : #accessing }
User >> UserPermissionsLiveAgentUser: anObject [

	UserPermissionsLiveAgentUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsMarketingUser [

	^ UserPermissionsMarketingUser
]

{ #category : #accessing }
User >> UserPermissionsMarketingUser: anObject [

	UserPermissionsMarketingUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsOfflineUser [

	^ UserPermissionsOfflineUser
]

{ #category : #accessing }
User >> UserPermissionsOfflineUser: anObject [

	UserPermissionsOfflineUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsSFContentUser [

	^ UserPermissionsSFContentUser
]

{ #category : #accessing }
User >> UserPermissionsSFContentUser: anObject [

	UserPermissionsSFContentUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsSiteforceContributorUser [

	^ UserPermissionsSiteforceContributorUser
]

{ #category : #accessing }
User >> UserPermissionsSiteforceContributorUser: anObject [

	UserPermissionsSiteforceContributorUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsSiteforcePublisherUser [

	^ UserPermissionsSiteforcePublisherUser
]

{ #category : #accessing }
User >> UserPermissionsSiteforcePublisherUser: anObject [

	UserPermissionsSiteforcePublisherUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsSupportUser [

	^ UserPermissionsSupportUser
]

{ #category : #accessing }
User >> UserPermissionsSupportUser: anObject [

	UserPermissionsSupportUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsWirelessUser [

	^ UserPermissionsWirelessUser
]

{ #category : #accessing }
User >> UserPermissionsWirelessUser: anObject [

	UserPermissionsWirelessUser := anObject
]

{ #category : #accessing }
User >> UserPermissionsWorkDotComUserFeature [

	^ UserPermissionsWorkDotComUserFeature
]

{ #category : #accessing }
User >> UserPermissionsWorkDotComUserFeature: anObject [

	UserPermissionsWorkDotComUserFeature := anObject
]

{ #category : #accessing }
User >> UserPreferencesActivityRemindersPopup [

	^ UserPreferencesActivityRemindersPopup
]

{ #category : #accessing }
User >> UserPreferencesActivityRemindersPopup: anObject [

	UserPreferencesActivityRemindersPopup := anObject
]

{ #category : #accessing }
User >> UserPreferencesAllowConversationReminders [

	^ UserPreferencesAllowConversationReminders
]

{ #category : #accessing }
User >> UserPreferencesAllowConversationReminders: anObject [

	UserPreferencesAllowConversationReminders := anObject
]

{ #category : #accessing }
User >> UserPreferencesApexPagesDeveloperMode [

	^ UserPreferencesApexPagesDeveloperMode
]

{ #category : #accessing }
User >> UserPreferencesApexPagesDeveloperMode: anObject [

	UserPreferencesApexPagesDeveloperMode := anObject
]

{ #category : #accessing }
User >> UserPreferencesAutoForwardCall [

	^ UserPreferencesAutoForwardCall
]

{ #category : #accessing }
User >> UserPreferencesAutoForwardCall: anObject [

	UserPreferencesAutoForwardCall := anObject
]

{ #category : #accessing }
User >> UserPreferencesContentEmailAsAndWhen [

	^ UserPreferencesContentEmailAsAndWhen
]

{ #category : #accessing }
User >> UserPreferencesContentEmailAsAndWhen: anObject [

	UserPreferencesContentEmailAsAndWhen := anObject
]

{ #category : #accessing }
User >> UserPreferencesContentNoEmail [

	^ UserPreferencesContentNoEmail
]

{ #category : #accessing }
User >> UserPreferencesContentNoEmail: anObject [

	UserPreferencesContentNoEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisCommentAfterLikeEmail [

	^ UserPreferencesDisCommentAfterLikeEmail
]

{ #category : #accessing }
User >> UserPreferencesDisCommentAfterLikeEmail: anObject [

	UserPreferencesDisCommentAfterLikeEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisMentionsCommentEmail [

	^ UserPreferencesDisMentionsCommentEmail
]

{ #category : #accessing }
User >> UserPreferencesDisMentionsCommentEmail: anObject [

	UserPreferencesDisMentionsCommentEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisProfPostCommentEmail [

	^ UserPreferencesDisProfPostCommentEmail
]

{ #category : #accessing }
User >> UserPreferencesDisProfPostCommentEmail: anObject [

	UserPreferencesDisProfPostCommentEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableAllFeedsEmail [

	^ UserPreferencesDisableAllFeedsEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableAllFeedsEmail: anObject [

	UserPreferencesDisableAllFeedsEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableAutoSubForFeeds [

	^ UserPreferencesDisableAutoSubForFeeds
]

{ #category : #accessing }
User >> UserPreferencesDisableAutoSubForFeeds: anObject [

	UserPreferencesDisableAutoSubForFeeds := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableBookmarkEmail [

	^ UserPreferencesDisableBookmarkEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableBookmarkEmail: anObject [

	UserPreferencesDisableBookmarkEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableChangeCommentEmail [

	^ UserPreferencesDisableChangeCommentEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableChangeCommentEmail: anObject [

	UserPreferencesDisableChangeCommentEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableEndorsementEmail [

	^ UserPreferencesDisableEndorsementEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableEndorsementEmail: anObject [

	UserPreferencesDisableEndorsementEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableFeedbackEmail [

	^ UserPreferencesDisableFeedbackEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableFeedbackEmail: anObject [

	UserPreferencesDisableFeedbackEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableFileShareNotificationsForApi [

	^ UserPreferencesDisableFileShareNotificationsForApi
]

{ #category : #accessing }
User >> UserPreferencesDisableFileShareNotificationsForApi: anObject [

	UserPreferencesDisableFileShareNotificationsForApi := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableFollowersEmail [

	^ UserPreferencesDisableFollowersEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableFollowersEmail: anObject [

	UserPreferencesDisableFollowersEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableLaterCommentEmail [

	^ UserPreferencesDisableLaterCommentEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableLaterCommentEmail: anObject [

	UserPreferencesDisableLaterCommentEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableLikeEmail [

	^ UserPreferencesDisableLikeEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableLikeEmail: anObject [

	UserPreferencesDisableLikeEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableMentionsPostEmail [

	^ UserPreferencesDisableMentionsPostEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableMentionsPostEmail: anObject [

	UserPreferencesDisableMentionsPostEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableMessageEmail [

	^ UserPreferencesDisableMessageEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableMessageEmail: anObject [

	UserPreferencesDisableMessageEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableProfilePostEmail [

	^ UserPreferencesDisableProfilePostEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableProfilePostEmail: anObject [

	UserPreferencesDisableProfilePostEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableRewardEmail [

	^ UserPreferencesDisableRewardEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableRewardEmail: anObject [

	UserPreferencesDisableRewardEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableSharePostEmail [

	^ UserPreferencesDisableSharePostEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableSharePostEmail: anObject [

	UserPreferencesDisableSharePostEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesDisableWorkEmail [

	^ UserPreferencesDisableWorkEmail
]

{ #category : #accessing }
User >> UserPreferencesDisableWorkEmail: anObject [

	UserPreferencesDisableWorkEmail := anObject
]

{ #category : #accessing }
User >> UserPreferencesEmailVerified [

	^ UserPreferencesEmailVerified
]

{ #category : #accessing }
User >> UserPreferencesEmailVerified: anObject [

	UserPreferencesEmailVerified := anObject
]

{ #category : #accessing }
User >> UserPreferencesEnableAutoSubForFeeds [

	^ UserPreferencesEnableAutoSubForFeeds
]

{ #category : #accessing }
User >> UserPreferencesEnableAutoSubForFeeds: anObject [

	UserPreferencesEnableAutoSubForFeeds := anObject
]

{ #category : #accessing }
User >> UserPreferencesEnableVoiceCallRecording [

	^ UserPreferencesEnableVoiceCallRecording
]

{ #category : #accessing }
User >> UserPreferencesEnableVoiceCallRecording: anObject [

	UserPreferencesEnableVoiceCallRecording := anObject
]

{ #category : #accessing }
User >> UserPreferencesEnableVoiceLocalPresence [

	^ UserPreferencesEnableVoiceLocalPresence
]

{ #category : #accessing }
User >> UserPreferencesEnableVoiceLocalPresence: anObject [

	UserPreferencesEnableVoiceLocalPresence := anObject
]

{ #category : #accessing }
User >> UserPreferencesEventRemindersCheckboxDefault [

	^ UserPreferencesEventRemindersCheckboxDefault
]

{ #category : #accessing }
User >> UserPreferencesEventRemindersCheckboxDefault: anObject [

	UserPreferencesEventRemindersCheckboxDefault := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideBiggerPhotoCallout [

	^ UserPreferencesHideBiggerPhotoCallout
]

{ #category : #accessing }
User >> UserPreferencesHideBiggerPhotoCallout: anObject [

	UserPreferencesHideBiggerPhotoCallout := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideCSNDesktopTask [

	^ UserPreferencesHideCSNDesktopTask
]

{ #category : #accessing }
User >> UserPreferencesHideCSNDesktopTask: anObject [

	UserPreferencesHideCSNDesktopTask := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideCSNGetChatterMobileTask [

	^ UserPreferencesHideCSNGetChatterMobileTask
]

{ #category : #accessing }
User >> UserPreferencesHideCSNGetChatterMobileTask: anObject [

	UserPreferencesHideCSNGetChatterMobileTask := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideChatterOnboardingSplash [

	^ UserPreferencesHideChatterOnboardingSplash
]

{ #category : #accessing }
User >> UserPreferencesHideChatterOnboardingSplash: anObject [

	UserPreferencesHideChatterOnboardingSplash := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideEndUserOnboardingAssistantModal [

	^ UserPreferencesHideEndUserOnboardingAssistantModal
]

{ #category : #accessing }
User >> UserPreferencesHideEndUserOnboardingAssistantModal: anObject [

	UserPreferencesHideEndUserOnboardingAssistantModal := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideLightningMigrationModal [

	^ UserPreferencesHideLightningMigrationModal
]

{ #category : #accessing }
User >> UserPreferencesHideLightningMigrationModal: anObject [

	UserPreferencesHideLightningMigrationModal := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideS1BrowserUI [

	^ UserPreferencesHideS1BrowserUI
]

{ #category : #accessing }
User >> UserPreferencesHideS1BrowserUI: anObject [

	UserPreferencesHideS1BrowserUI := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideSecondChatterOnboardingSplash [

	^ UserPreferencesHideSecondChatterOnboardingSplash
]

{ #category : #accessing }
User >> UserPreferencesHideSecondChatterOnboardingSplash: anObject [

	UserPreferencesHideSecondChatterOnboardingSplash := anObject
]

{ #category : #accessing }
User >> UserPreferencesHideSfxWelcomeMat [

	^ UserPreferencesHideSfxWelcomeMat
]

{ #category : #accessing }
User >> UserPreferencesHideSfxWelcomeMat: anObject [

	UserPreferencesHideSfxWelcomeMat := anObject
]

{ #category : #accessing }
User >> UserPreferencesJigsawListUser [

	^ UserPreferencesJigsawListUser
]

{ #category : #accessing }
User >> UserPreferencesJigsawListUser: anObject [

	UserPreferencesJigsawListUser := anObject
]

{ #category : #accessing }
User >> UserPreferencesLightningExperiencePreferred [

	^ UserPreferencesLightningExperiencePreferred
]

{ #category : #accessing }
User >> UserPreferencesLightningExperiencePreferred: anObject [

	UserPreferencesLightningExperiencePreferred := anObject
]

{ #category : #accessing }
User >> UserPreferencesLiveAgentMiawSetupDeflection [

	^ UserPreferencesLiveAgentMiawSetupDeflection
]

{ #category : #accessing }
User >> UserPreferencesLiveAgentMiawSetupDeflection: anObject [

	UserPreferencesLiveAgentMiawSetupDeflection := anObject
]

{ #category : #accessing }
User >> UserPreferencesNativeEmailClient [

	^ UserPreferencesNativeEmailClient
]

{ #category : #accessing }
User >> UserPreferencesNativeEmailClient: anObject [

	UserPreferencesNativeEmailClient := anObject
]

{ #category : #accessing }
User >> UserPreferencesOptOutOfTouch [

	^ UserPreferencesOptOutOfTouch
]

{ #category : #accessing }
User >> UserPreferencesOptOutOfTouch: anObject [

	UserPreferencesOptOutOfTouch := anObject
]

{ #category : #accessing }
User >> UserPreferencesOutboundBridge [

	^ UserPreferencesOutboundBridge
]

{ #category : #accessing }
User >> UserPreferencesOutboundBridge: anObject [

	UserPreferencesOutboundBridge := anObject
]

{ #category : #accessing }
User >> UserPreferencesPathAssistantCollapsed [

	^ UserPreferencesPathAssistantCollapsed
]

{ #category : #accessing }
User >> UserPreferencesPathAssistantCollapsed: anObject [

	UserPreferencesPathAssistantCollapsed := anObject
]

{ #category : #accessing }
User >> UserPreferencesProcessAssistantCollapsed [

	^ UserPreferencesProcessAssistantCollapsed
]

{ #category : #accessing }
User >> UserPreferencesProcessAssistantCollapsed: anObject [

	UserPreferencesProcessAssistantCollapsed := anObject
]

{ #category : #accessing }
User >> UserPreferencesReceiveNoNotificationsAsApprover [

	^ UserPreferencesReceiveNoNotificationsAsApprover
]

{ #category : #accessing }
User >> UserPreferencesReceiveNoNotificationsAsApprover: anObject [

	UserPreferencesReceiveNoNotificationsAsApprover := anObject
]

{ #category : #accessing }
User >> UserPreferencesReceiveNotificationsAsDelegatedApprover [

	^ UserPreferencesReceiveNotificationsAsDelegatedApprover
]

{ #category : #accessing }
User >> UserPreferencesReceiveNotificationsAsDelegatedApprover: anObject [

	UserPreferencesReceiveNotificationsAsDelegatedApprover := anObject
]

{ #category : #accessing }
User >> UserPreferencesReminderSoundOff [

	^ UserPreferencesReminderSoundOff
]

{ #category : #accessing }
User >> UserPreferencesReminderSoundOff: anObject [

	UserPreferencesReminderSoundOff := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowCityToExternalUsers [

	^ UserPreferencesShowCityToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowCityToExternalUsers: anObject [

	UserPreferencesShowCityToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowCityToGuestUsers [

	^ UserPreferencesShowCityToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowCityToGuestUsers: anObject [

	UserPreferencesShowCityToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowCountryToExternalUsers [

	^ UserPreferencesShowCountryToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowCountryToExternalUsers: anObject [

	UserPreferencesShowCountryToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowCountryToGuestUsers [

	^ UserPreferencesShowCountryToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowCountryToGuestUsers: anObject [

	UserPreferencesShowCountryToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowEmailToExternalUsers [

	^ UserPreferencesShowEmailToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowEmailToExternalUsers: anObject [

	UserPreferencesShowEmailToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowEmailToGuestUsers [

	^ UserPreferencesShowEmailToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowEmailToGuestUsers: anObject [

	UserPreferencesShowEmailToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowFaxToExternalUsers [

	^ UserPreferencesShowFaxToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowFaxToExternalUsers: anObject [

	UserPreferencesShowFaxToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowFaxToGuestUsers [

	^ UserPreferencesShowFaxToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowFaxToGuestUsers: anObject [

	UserPreferencesShowFaxToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowManagerToExternalUsers [

	^ UserPreferencesShowManagerToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowManagerToExternalUsers: anObject [

	UserPreferencesShowManagerToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowManagerToGuestUsers [

	^ UserPreferencesShowManagerToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowManagerToGuestUsers: anObject [

	UserPreferencesShowManagerToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowMobilePhoneToExternalUsers [

	^ UserPreferencesShowMobilePhoneToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowMobilePhoneToExternalUsers: anObject [

	UserPreferencesShowMobilePhoneToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowMobilePhoneToGuestUsers [

	^ UserPreferencesShowMobilePhoneToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowMobilePhoneToGuestUsers: anObject [

	UserPreferencesShowMobilePhoneToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowPostalCodeToExternalUsers [

	^ UserPreferencesShowPostalCodeToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowPostalCodeToExternalUsers: anObject [

	UserPreferencesShowPostalCodeToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowPostalCodeToGuestUsers [

	^ UserPreferencesShowPostalCodeToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowPostalCodeToGuestUsers: anObject [

	UserPreferencesShowPostalCodeToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowProfilePicToGuestUsers [

	^ UserPreferencesShowProfilePicToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowProfilePicToGuestUsers: anObject [

	UserPreferencesShowProfilePicToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowStateToExternalUsers [

	^ UserPreferencesShowStateToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowStateToExternalUsers: anObject [

	UserPreferencesShowStateToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowStateToGuestUsers [

	^ UserPreferencesShowStateToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowStateToGuestUsers: anObject [

	UserPreferencesShowStateToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowStreetAddressToExternalUsers [

	^ UserPreferencesShowStreetAddressToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowStreetAddressToExternalUsers: anObject [

	UserPreferencesShowStreetAddressToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowStreetAddressToGuestUsers [

	^ UserPreferencesShowStreetAddressToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowStreetAddressToGuestUsers: anObject [

	UserPreferencesShowStreetAddressToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowTitleToExternalUsers [

	^ UserPreferencesShowTitleToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowTitleToExternalUsers: anObject [

	UserPreferencesShowTitleToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowTitleToGuestUsers [

	^ UserPreferencesShowTitleToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowTitleToGuestUsers: anObject [

	UserPreferencesShowTitleToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowWorkPhoneToExternalUsers [

	^ UserPreferencesShowWorkPhoneToExternalUsers
]

{ #category : #accessing }
User >> UserPreferencesShowWorkPhoneToExternalUsers: anObject [

	UserPreferencesShowWorkPhoneToExternalUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesShowWorkPhoneToGuestUsers [

	^ UserPreferencesShowWorkPhoneToGuestUsers
]

{ #category : #accessing }
User >> UserPreferencesShowWorkPhoneToGuestUsers: anObject [

	UserPreferencesShowWorkPhoneToGuestUsers := anObject
]

{ #category : #accessing }
User >> UserPreferencesSortFeedByComment [

	^ UserPreferencesSortFeedByComment
]

{ #category : #accessing }
User >> UserPreferencesSortFeedByComment: anObject [

	UserPreferencesSortFeedByComment := anObject
]

{ #category : #accessing }
User >> UserPreferencesSuppressEventSFXReminders [

	^ UserPreferencesSuppressEventSFXReminders
]

{ #category : #accessing }
User >> UserPreferencesSuppressEventSFXReminders: anObject [

	UserPreferencesSuppressEventSFXReminders := anObject
]

{ #category : #accessing }
User >> UserPreferencesSuppressTaskSFXReminders [

	^ UserPreferencesSuppressTaskSFXReminders
]

{ #category : #accessing }
User >> UserPreferencesSuppressTaskSFXReminders: anObject [

	UserPreferencesSuppressTaskSFXReminders := anObject
]

{ #category : #accessing }
User >> UserPreferencesTaskRemindersCheckboxDefault [

	^ UserPreferencesTaskRemindersCheckboxDefault
]

{ #category : #accessing }
User >> UserPreferencesTaskRemindersCheckboxDefault: anObject [

	UserPreferencesTaskRemindersCheckboxDefault := anObject
]

{ #category : #accessing }
User >> UserPreferencesUserDebugModePref [

	^ UserPreferencesUserDebugModePref
]

{ #category : #accessing }
User >> UserPreferencesUserDebugModePref: anObject [

	UserPreferencesUserDebugModePref := anObject
]

{ #category : #accessing }
User >> UserRoleId [

	^ UserRoleId
]

{ #category : #accessing }
User >> UserRoleId: anObject [

	UserRoleId := anObject
]

{ #category : #accessing }
User >> UserType [

	^ UserType
]

{ #category : #accessing }
User >> UserType: anObject [

	UserType := anObject
]

{ #category : #accessing }
User >> Username [

	^ Username
]

{ #category : #accessing }
User >> Username: anObject [

	Username := anObject
]

{ #category : #accessing }
User >> WirelessEmail [

	^ WirelessEmail
]

{ #category : #accessing }
User >> WirelessEmail: anObject [

	WirelessEmail := anObject
]

{ #category : #initialization }
User >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'User'.
	self excludedFields:
		#( 'AccountId' 'Address' 'BadgeText' 'BannerPhotUrl' 'CountryCode'
		   'CurrentStatus' 'DefaultCurrencyIsoCode' 'DefaultDivision'
		   'FullPhotoUrl' 'IsPartner' 'IsPortalEnabled' 'IsPortalSelfRegistered'
		   'IsPrmSuperUser' 'IsProfilePhotoActive' 'LastLoginDate'
		   'LastReferencedDate' 'LastViewedDate' 'Manager' 'MediumBannerPhotoUrl'
		   'MiddleName' 'Name' 'NumberOfFailedLogins' 'OfflineTrialExpirationDate'
		   'PortalRole' 'SmallBannerPhotoUrl' 'SmallPhotoUrl'
		   'StateCode' 'Suffix' 'UserPermissionsChatterAnswersUser'
		   'UserPermissionsLiveAgentUser' 'UserPermissionsWirelessUser'
		   'UserPreferencesAllowConversationReminders'
		   'UserPreferencesAutoForwardCall' 'UserPreferencesAutoForwardCall'
		   'UserPreferencesDisableAutoSubForFeeds'
		   'UserPreferencesDisableFeedbackEmail'
		   'UserPreferencesDisableRewardEmail'
		   'UserPreferencesDisableWorkEmail'
		   'UserPreferencesEmailVerified' 'UserPreferencesEnableVoiceCallRecording'
		   'UserPreferencesEnableVoiceLocalPresence'
		   'UserPreferencesOptOutOfTouch' 'UserPreferencesOptOutOfTouch'
		   'UserPreferencesOutboundBridge' 'UserPreferencesProcessAssistantCollapsed'
		   'UserType' 'WirelessEmail' )
]
