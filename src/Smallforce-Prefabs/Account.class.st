"
I represent an Account object in a Salesforce org.

I implement the API for business accounts, not person accounts. The difference is explained in the API reference: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_account.htm
"
Class {
	#name : #Account,
	#superclass : #SObject,
	#instVars : [
		'CreatedById',
		'LastModifiedById',
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
	#category : #'Smallforce-Prefabs'
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
Account >> Active__c [

	^ Active__c
]

{ #category : #accessing }
Account >> Active__c: anObject [

	Active__c := anObject
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
Account >> CleanStatus [

	^ CleanStatus
]

{ #category : #accessing }
Account >> CleanStatus: anObject [

	CleanStatus := anObject
]

{ #category : #accessing }
Account >> CreatedById [

	^ CreatedById
]

{ #category : #accessing }
Account >> CreatedById: anObject [

	CreatedById := anObject
]

{ #category : #accessing }
Account >> CustomerPriority__c [

	^ CustomerPriority__c
]

{ #category : #accessing }
Account >> CustomerPriority__c: anObject [

	CustomerPriority__c := anObject
]

{ #category : #accessing }
Account >> DandbCompanyId [

	^ DandbCompanyId
]

{ #category : #accessing }
Account >> DandbCompanyId: anObject [

	DandbCompanyId := anObject
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
Account >> Jigsaw [

	^ Jigsaw
]

{ #category : #accessing }
Account >> Jigsaw: anObject [

	Jigsaw := anObject
]

{ #category : #accessing }
Account >> LastModifiedById [

	^ LastModifiedById
]

{ #category : #accessing }
Account >> LastModifiedById: anObject [

	LastModifiedById := anObject
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
Account >> NumberofLocations__c [

	^ NumberofLocations__c
]

{ #category : #accessing }
Account >> NumberofLocations__c: anObject [

	NumberofLocations__c := anObject
]

{ #category : #accessing }
Account >> OwnerID [

	^ OwnerID
]

{ #category : #accessing }
Account >> OwnerID: anObject [

	OwnerID := anObject
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
Account >> Rating [

	^ Rating
]

{ #category : #accessing }
Account >> Rating: anObject [

	Rating := anObject
]

{ #category : #accessing }
Account >> SLAExpirationDate__c [

	^ SLAExpirationDate__c
]

{ #category : #accessing }
Account >> SLAExpirationDate__c: anObject [

	SLAExpirationDate__c := anObject
]

{ #category : #accessing }
Account >> SLASerialNumber__c [

	^ SLASerialNumber__c
]

{ #category : #accessing }
Account >> SLASerialNumber__c: anObject [

	SLASerialNumber__c := anObject
]

{ #category : #accessing }
Account >> SLA__c [

	^ SLA__c
]

{ #category : #accessing }
Account >> SLA__c: anObject [

	SLA__c := anObject
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
Account >> Tier [

	^ Tier
]

{ #category : #accessing }
Account >> Tier: anObject [

	Tier := anObject
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
Account >> UpsellOpportunity__c [

	^ UpsellOpportunity__c
]

{ #category : #accessing }
Account >> UpsellOpportunity__c: anObject [

	UpsellOpportunity__c := anObject
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
