"
I represent an Account object in a Salesforce org.

I implement the API for business accounts, not person accounts. The difference is explained in the API reference: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_account.htm
"
Class {
	#name : #Account,
	#superclass : #SObject,
	#instVars : [
		'AccountNumber',
		'AccountSource',
		'AnnualRevenue',
		'BillingAddress',
		'BillingCity',
		'BillingCountry',
		'BillingCountryCode',
		'BillingGeocodeAccuracy',
		'BillingLatitude',
		'BillingLongitude',
		'BillingPostalCode',
		'BillingState',
		'BillingStateCode',
		'BillingStreet',
		'ChannelProgramLevelName',
		'ChannelProgramName',
		'CleanStatus',
		'Description',
		'DunsNumber',
		'Fax',
		'Industry',
		'IsPartner',
		'Jigsaw',
		'LastActivityDate',
		'LastReferencedDate',
		'LastViewedDate',
		'MasterRecordId',
		'NaicsCode',
		'NaicsDesc',
		'Name',
		'NumberOfEmployees',
		'OperatingHoursId',
		'OwnerId',
		'Ownership',
		'ParentId',
		'Phone',
		'PhotoUrl',
		'Rating',
		'RecordTypeId',
		'ShippingAddress',
		'ShippingCity',
		'ShippingCountry',
		'ShippingCountryCode',
		'ShippingGeocodeAccuracy',
		'ShippingLatitude',
		'ShippingLongitude',
		'ShippingPostalCode',
		'ShippingState',
		'ShippingStateCode',
		'ShippingStreet',
		'Sic',
		'SicDesc',
		'Site',
		'TickerSymbol',
		'Tradestyle',
		'Type',
		'Website',
		'YearStarted'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Account >> AccountNumber [

	^ AccountNumber
]

{ #category : #accessing }
Account >> AccountNumber: anObject [

	AccountNumber := anObject
]

{ #category : #accessing }
Account >> AccountSource [

	^ AccountSource
]

{ #category : #accessing }
Account >> AccountSource: anObject [

	AccountSource := anObject
]

{ #category : #accessing }
Account >> AnnualRevenue [

	^ AnnualRevenue
]

{ #category : #accessing }
Account >> AnnualRevenue: anObject [

	AnnualRevenue := anObject
]

{ #category : #accessing }
Account >> BillingAddress [

	^ BillingAddress
]

{ #category : #accessing }
Account >> BillingAddress: anObject [

	BillingAddress := anObject
]

{ #category : #accessing }
Account >> BillingCity [

	^ BillingCity
]

{ #category : #accessing }
Account >> BillingCity: anObject [

	BillingCity := anObject
]

{ #category : #accessing }
Account >> BillingCountry [

	^ BillingCountry
]

{ #category : #accessing }
Account >> BillingCountry: anObject [

	BillingCountry := anObject
]

{ #category : #accessing }
Account >> BillingCountryCode [

	^ BillingCountryCode
]

{ #category : #accessing }
Account >> BillingCountryCode: anObject [

	BillingCountryCode := anObject
]

{ #category : #accessing }
Account >> BillingGeocodeAccuracy [

	^ BillingGeocodeAccuracy
]

{ #category : #accessing }
Account >> BillingGeocodeAccuracy: anObject [

	BillingGeocodeAccuracy := anObject
]

{ #category : #accessing }
Account >> BillingLatitude [

	^ BillingLatitude
]

{ #category : #accessing }
Account >> BillingLatitude: anObject [

	BillingLatitude := anObject
]

{ #category : #accessing }
Account >> BillingLongitude [

	^ BillingLongitude
]

{ #category : #accessing }
Account >> BillingLongitude: anObject [

	BillingLongitude := anObject
]

{ #category : #accessing }
Account >> BillingPostalCode [

	^ BillingPostalCode
]

{ #category : #accessing }
Account >> BillingPostalCode: anObject [

	BillingPostalCode := anObject
]

{ #category : #accessing }
Account >> BillingState [

	^ BillingState
]

{ #category : #accessing }
Account >> BillingState: anObject [

	BillingState := anObject
]

{ #category : #accessing }
Account >> BillingStateCode [

	^ BillingStateCode
]

{ #category : #accessing }
Account >> BillingStateCode: anObject [

	BillingStateCode := anObject
]

{ #category : #accessing }
Account >> BillingStreet [

	^ BillingStreet
]

{ #category : #accessing }
Account >> BillingStreet: anObject [

	BillingStreet := anObject
]

{ #category : #accessing }
Account >> ChannelProgramLevelName [

	^ ChannelProgramLevelName
]

{ #category : #accessing }
Account >> ChannelProgramLevelName: anObject [

	ChannelProgramLevelName := anObject
]

{ #category : #accessing }
Account >> ChannelProgramName [

	^ ChannelProgramName
]

{ #category : #accessing }
Account >> ChannelProgramName: anObject [

	ChannelProgramName := anObject
]

{ #category : #accessing }
Account >> CleanStatus [

	^ CleanStatus
]

{ #category : #accessing }
Account >> CleanStatus: anObject [

	CleanStatus := anObject
]

{ #category : #accessing }
Account >> Description [

	^ Description
]

{ #category : #accessing }
Account >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Account >> DunsNumber [

	^ DunsNumber
]

{ #category : #accessing }
Account >> DunsNumber: anObject [

	DunsNumber := anObject
]

{ #category : #accessing }
Account >> Fax [

	^ Fax
]

{ #category : #accessing }
Account >> Fax: anObject [

	Fax := anObject
]

{ #category : #accessing }
Account >> Industry [

	^ Industry
]

{ #category : #accessing }
Account >> Industry: anObject [

	Industry := anObject
]

{ #category : #accessing }
Account >> IsPartner [

	^ IsPartner
]

{ #category : #accessing }
Account >> IsPartner: anObject [

	IsPartner := anObject
]

{ #category : #accessing }
Account >> Jigsaw [

	^ Jigsaw
]

{ #category : #accessing }
Account >> Jigsaw: anObject [

	Jigsaw := anObject
]

{ #category : #accessing }
Account >> LastActivityDate [

	^ LastActivityDate
]

{ #category : #accessing }
Account >> LastActivityDate: anObject [

	LastActivityDate := anObject
]

{ #category : #accessing }
Account >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Account >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Account >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Account >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Account >> MasterRecordId [

	^ MasterRecordId
]

{ #category : #accessing }
Account >> MasterRecordId: anObject [

	MasterRecordId := anObject
]

{ #category : #accessing }
Account >> NaicsCode [

	^ NaicsCode
]

{ #category : #accessing }
Account >> NaicsCode: anObject [

	NaicsCode := anObject
]

{ #category : #accessing }
Account >> NaicsDesc [

	^ NaicsDesc
]

{ #category : #accessing }
Account >> NaicsDesc: anObject [

	NaicsDesc := anObject
]

{ #category : #accessing }
Account >> Name [

	^ Name
]

{ #category : #accessing }
Account >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
Account >> NumberOfEmployees [

	^ NumberOfEmployees
]

{ #category : #accessing }
Account >> NumberOfEmployees: anObject [

	NumberOfEmployees := anObject
]

{ #category : #accessing }
Account >> OperatingHoursId [

	^ OperatingHoursId
]

{ #category : #accessing }
Account >> OperatingHoursId: anObject [

	OperatingHoursId := anObject
]

{ #category : #accessing }
Account >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Account >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Account >> Ownership [

	^ Ownership
]

{ #category : #accessing }
Account >> Ownership: anObject [

	Ownership := anObject
]

{ #category : #accessing }
Account >> ParentId [

	^ ParentId
]

{ #category : #accessing }
Account >> ParentId: anObject [

	ParentId := anObject
]

{ #category : #accessing }
Account >> Phone [

	^ Phone
]

{ #category : #accessing }
Account >> Phone: anObject [

	Phone := anObject
]

{ #category : #accessing }
Account >> PhotoUrl [

	^ PhotoUrl
]

{ #category : #accessing }
Account >> PhotoUrl: anObject [

	PhotoUrl := anObject
]

{ #category : #accessing }
Account >> Rating [

	^ Rating
]

{ #category : #accessing }
Account >> Rating: anObject [

	Rating := anObject
]

{ #category : #accessing }
Account >> RecordTypeId [

	^ RecordTypeId
]

{ #category : #accessing }
Account >> RecordTypeId: anObject [

	RecordTypeId := anObject
]

{ #category : #accessing }
Account >> ShippingAddress [

	^ ShippingAddress
]

{ #category : #accessing }
Account >> ShippingAddress: anObject [

	ShippingAddress := anObject
]

{ #category : #accessing }
Account >> ShippingCity [

	^ ShippingCity
]

{ #category : #accessing }
Account >> ShippingCity: anObject [

	ShippingCity := anObject
]

{ #category : #accessing }
Account >> ShippingCountry [

	^ ShippingCountry
]

{ #category : #accessing }
Account >> ShippingCountry: anObject [

	ShippingCountry := anObject
]

{ #category : #accessing }
Account >> ShippingCountryCode [

	^ ShippingCountryCode
]

{ #category : #accessing }
Account >> ShippingCountryCode: anObject [

	ShippingCountryCode := anObject
]

{ #category : #accessing }
Account >> ShippingGeocodeAccuracy [

	^ ShippingGeocodeAccuracy
]

{ #category : #accessing }
Account >> ShippingGeocodeAccuracy: anObject [

	ShippingGeocodeAccuracy := anObject
]

{ #category : #accessing }
Account >> ShippingLatitude [

	^ ShippingLatitude
]

{ #category : #accessing }
Account >> ShippingLatitude: anObject [

	ShippingLatitude := anObject
]

{ #category : #accessing }
Account >> ShippingLongitude [

	^ ShippingLongitude
]

{ #category : #accessing }
Account >> ShippingLongitude: anObject [

	ShippingLongitude := anObject
]

{ #category : #accessing }
Account >> ShippingPostalCode [

	^ ShippingPostalCode
]

{ #category : #accessing }
Account >> ShippingPostalCode: anObject [

	ShippingPostalCode := anObject
]

{ #category : #accessing }
Account >> ShippingState [

	^ ShippingState
]

{ #category : #accessing }
Account >> ShippingState: anObject [

	ShippingState := anObject
]

{ #category : #accessing }
Account >> ShippingStateCode [

	^ ShippingStateCode
]

{ #category : #accessing }
Account >> ShippingStateCode: anObject [

	ShippingStateCode := anObject
]

{ #category : #accessing }
Account >> ShippingStreet [

	^ ShippingStreet
]

{ #category : #accessing }
Account >> ShippingStreet: anObject [

	ShippingStreet := anObject
]

{ #category : #accessing }
Account >> Sic [

	^ Sic
]

{ #category : #accessing }
Account >> Sic: anObject [

	Sic := anObject
]

{ #category : #accessing }
Account >> SicDesc [

	^ SicDesc
]

{ #category : #accessing }
Account >> SicDesc: anObject [

	SicDesc := anObject
]

{ #category : #accessing }
Account >> Site [

	^ Site
]

{ #category : #accessing }
Account >> Site: anObject [

	Site := anObject
]

{ #category : #accessing }
Account >> TickerSymbol [

	^ TickerSymbol
]

{ #category : #accessing }
Account >> TickerSymbol: anObject [

	TickerSymbol := anObject
]

{ #category : #accessing }
Account >> Tradestyle [

	^ Tradestyle
]

{ #category : #accessing }
Account >> Tradestyle: anObject [

	Tradestyle := anObject
]

{ #category : #accessing }
Account >> Type [

	^ Type
]

{ #category : #accessing }
Account >> Type: anObject [

	Type := anObject
]

{ #category : #accessing }
Account >> Website [

	^ Website
]

{ #category : #accessing }
Account >> Website: anObject [

	Website := anObject
]

{ #category : #accessing }
Account >> YearStarted [

	^ YearStarted
]

{ #category : #accessing }
Account >> YearStarted: anObject [

	YearStarted := anObject
]

{ #category : #initialization }
Account >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Account'.
	self excludedFields:
		#( 'CreatedById' 'LastModifiedById' 'BillingAddress'
		   'BillingCountryCode' 'BillingStateCode' 'ChannelProgramLevelName'
		   'ChannelProgramName' 'IsPartner' 'LastActivityDate'
		   'LastModifiedById' 'LastReferencedDate' 'LastViewedDate'
		   'MasterRecordId' 'OperatingHoursId' 'PhotoUrl' 'RecordTypeId'
		   'ShippingAddress' 'ShippingCountryCode' 'ShippingStateCode' )
]
