"
I represent a Lead object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_lead.htm
"
Class {
	#name : #Lead,
	#superclass : #SObject,
	#instVars : [
		'ActionCadenceAssigneeId',
		'ActionCadenceId',
		'ActivityMetricId',
		'Address',
		'AnnualRevenue',
		'City',
		'CleanStatus',
		'Company',
		'CompanyDunsNumber',
		'ConnectionReceivedId',
		'ConnectionSentId',
		'ConvertedAccountId',
		'ConvertedContactId',
		'ConvertedDate',
		'ConvertedOpportunityId',
		'Country',
		'CountryCode',
		'CurrencyIsoCode',
		'Description',
		'Division',
		'Email',
		'EmailBouncedDate',
		'EmailBouncedReason',
		'Fax',
		'FirstCallDateTime',
		'FirstEmailDateTime',
		'FirstName',
		'HasOptedOutOfEmail',
		'HasOptedOutOfFax',
		'GeocodeAccuracy',
		'IndividualId',
		'Industry',
		'IsConverted',
		'IsDeleted',
		'IsUnreadByOwner',
		'Jigsaw',
		'LastActivityDate',
		'LastName',
		'LastReferencedDate',
		'LastViewedDate',
		'Latitude',
		'Longitude',
		'LeadSource',
		'MasterRecordId',
		'MiddleName',
		'MobilePhone',
		'Name',
		'NumberOfEmployees',
		'OwnerId',
		'PartnerAccountId',
		'Phone',
		'PhotoUrl',
		'PostalCode',
		'Rating',
		'RecordTypeId',
		'Salutation',
		'ScoreIntelligenceId',
		'State',
		'StateCode',
		'Status',
		'Street',
		'Suffix',
		'Title',
		'Website'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Lead >> ActionCadenceAssigneeId [

	^ ActionCadenceAssigneeId
]

{ #category : #accessing }
Lead >> ActionCadenceAssigneeId: anObject [

	ActionCadenceAssigneeId := anObject
]

{ #category : #accessing }
Lead >> ActionCadenceId [

	^ ActionCadenceId
]

{ #category : #accessing }
Lead >> ActionCadenceId: anObject [

	ActionCadenceId := anObject
]

{ #category : #accessing }
Lead >> ActivityMetricId [

	^ ActivityMetricId
]

{ #category : #accessing }
Lead >> ActivityMetricId: anObject [

	ActivityMetricId := anObject
]

{ #category : #accessing }
Lead >> Address [

	^ Address
]

{ #category : #accessing }
Lead >> Address: anObject [

	Address := anObject
]

{ #category : #accessing }
Lead >> AnnualRevenue [

	^ AnnualRevenue
]

{ #category : #accessing }
Lead >> AnnualRevenue: anObject [

	AnnualRevenue := anObject
]

{ #category : #accessing }
Lead >> City [

	^ City
]

{ #category : #accessing }
Lead >> City: anObject [

	City := anObject
]

{ #category : #accessing }
Lead >> CleanStatus [

	^ CleanStatus
]

{ #category : #accessing }
Lead >> CleanStatus: anObject [

	CleanStatus := anObject
]

{ #category : #accessing }
Lead >> Company [

	^ Company
]

{ #category : #accessing }
Lead >> Company: anObject [

	Company := anObject
]

{ #category : #accessing }
Lead >> CompanyDunsNumber [

	^ CompanyDunsNumber
]

{ #category : #accessing }
Lead >> CompanyDunsNumber: anObject [

	CompanyDunsNumber := anObject
]

{ #category : #accessing }
Lead >> ConnectionReceivedId [

	^ ConnectionReceivedId
]

{ #category : #accessing }
Lead >> ConnectionReceivedId: anObject [

	ConnectionReceivedId := anObject
]

{ #category : #accessing }
Lead >> ConnectionSentId [

	^ ConnectionSentId
]

{ #category : #accessing }
Lead >> ConnectionSentId: anObject [

	ConnectionSentId := anObject
]

{ #category : #accessing }
Lead >> ConvertedAccountId [

	^ ConvertedAccountId
]

{ #category : #accessing }
Lead >> ConvertedAccountId: anObject [

	ConvertedAccountId := anObject
]

{ #category : #accessing }
Lead >> ConvertedContactId [

	^ ConvertedContactId
]

{ #category : #accessing }
Lead >> ConvertedContactId: anObject [

	ConvertedContactId := anObject
]

{ #category : #accessing }
Lead >> ConvertedDate [

	^ ConvertedDate
]

{ #category : #accessing }
Lead >> ConvertedDate: anObject [

	ConvertedDate := anObject
]

{ #category : #accessing }
Lead >> ConvertedOpportunityId [

	^ ConvertedOpportunityId
]

{ #category : #accessing }
Lead >> ConvertedOpportunityId: anObject [

	ConvertedOpportunityId := anObject
]

{ #category : #accessing }
Lead >> Country [

	^ Country
]

{ #category : #accessing }
Lead >> Country: anObject [

	Country := anObject
]

{ #category : #accessing }
Lead >> CountryCode [

	^ CountryCode
]

{ #category : #accessing }
Lead >> CountryCode: anObject [

	CountryCode := anObject
]

{ #category : #accessing }
Lead >> CurrencyIsoCode [

	^ CurrencyIsoCode
]

{ #category : #accessing }
Lead >> CurrencyIsoCode: anObject [

	CurrencyIsoCode := anObject
]

{ #category : #accessing }
Lead >> Description [

	^ Description
]

{ #category : #accessing }
Lead >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Lead >> Division [

	^ Division
]

{ #category : #accessing }
Lead >> Division: anObject [

	Division := anObject
]

{ #category : #accessing }
Lead >> Email [

	^ Email
]

{ #category : #accessing }
Lead >> Email: anObject [

	Email := anObject
]

{ #category : #accessing }
Lead >> EmailBouncedDate [

	^ EmailBouncedDate
]

{ #category : #accessing }
Lead >> EmailBouncedDate: anObject [

	EmailBouncedDate := anObject
]

{ #category : #accessing }
Lead >> EmailBouncedReason [

	^ EmailBouncedReason
]

{ #category : #accessing }
Lead >> EmailBouncedReason: anObject [

	EmailBouncedReason := anObject
]

{ #category : #accessing }
Lead >> Fax [

	^ Fax
]

{ #category : #accessing }
Lead >> Fax: anObject [

	Fax := anObject
]

{ #category : #accessing }
Lead >> FirstCallDateTime [

	^ FirstCallDateTime
]

{ #category : #accessing }
Lead >> FirstCallDateTime: anObject [

	FirstCallDateTime := anObject
]

{ #category : #accessing }
Lead >> FirstEmailDateTime [

	^ FirstEmailDateTime
]

{ #category : #accessing }
Lead >> FirstEmailDateTime: anObject [

	FirstEmailDateTime := anObject
]

{ #category : #accessing }
Lead >> FirstName [

	^ FirstName
]

{ #category : #accessing }
Lead >> FirstName: anObject [

	FirstName := anObject
]

{ #category : #accessing }
Lead >> GeocodeAccuracy [

	^ GeocodeAccuracy
]

{ #category : #accessing }
Lead >> GeocodeAccuracy: anObject [

	GeocodeAccuracy := anObject
]

{ #category : #accessing }
Lead >> HasOptedOutOfEmail [

	^ HasOptedOutOfEmail
]

{ #category : #accessing }
Lead >> HasOptedOutOfEmail: anObject [

	HasOptedOutOfEmail := anObject
]

{ #category : #accessing }
Lead >> HasOptedOutOfFax [

	^ HasOptedOutOfFax
]

{ #category : #accessing }
Lead >> HasOptedOutOfFax: anObject [

	HasOptedOutOfFax := anObject
]

{ #category : #accessing }
Lead >> IndividualId [

	^ IndividualId
]

{ #category : #accessing }
Lead >> IndividualId: anObject [

	IndividualId := anObject
]

{ #category : #accessing }
Lead >> Industry [

	^ Industry
]

{ #category : #accessing }
Lead >> Industry: anObject [

	Industry := anObject
]

{ #category : #accessing }
Lead >> IsConverted [

	^ IsConverted
]

{ #category : #accessing }
Lead >> IsConverted: anObject [

	IsConverted := anObject
]

{ #category : #accessing }
Lead >> IsDeleted [

	^ IsDeleted
]

{ #category : #accessing }
Lead >> IsDeleted: anObject [

	IsDeleted := anObject
]

{ #category : #accessing }
Lead >> IsUnreadByOwner [

	^ IsUnreadByOwner
]

{ #category : #accessing }
Lead >> IsUnreadByOwner: anObject [

	IsUnreadByOwner := anObject
]

{ #category : #accessing }
Lead >> Jigsaw [

	^ Jigsaw
]

{ #category : #accessing }
Lead >> Jigsaw: anObject [

	Jigsaw := anObject
]

{ #category : #accessing }
Lead >> LastActivityDate [

	^ LastActivityDate
]

{ #category : #accessing }
Lead >> LastActivityDate: anObject [

	LastActivityDate := anObject
]

{ #category : #accessing }
Lead >> LastName [

	^ LastName
]

{ #category : #accessing }
Lead >> LastName: anObject [

	LastName := anObject
]

{ #category : #accessing }
Lead >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Lead >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Lead >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Lead >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Lead >> Latitude [

	^ Latitude
]

{ #category : #accessing }
Lead >> Latitude: anObject [

	Latitude := anObject
]

{ #category : #accessing }
Lead >> LeadSource [

	^ LeadSource
]

{ #category : #accessing }
Lead >> LeadSource: anObject [

	LeadSource := anObject
]

{ #category : #accessing }
Lead >> Longitude [

	^ Longitude
]

{ #category : #accessing }
Lead >> Longitude: anObject [

	Longitude := anObject
]

{ #category : #accessing }
Lead >> MasterRecordId [

	^ MasterRecordId
]

{ #category : #accessing }
Lead >> MasterRecordId: anObject [

	MasterRecordId := anObject
]

{ #category : #accessing }
Lead >> MiddleName [

	^ MiddleName
]

{ #category : #accessing }
Lead >> MiddleName: anObject [

	MiddleName := anObject
]

{ #category : #accessing }
Lead >> MobilePhone [

	^ MobilePhone
]

{ #category : #accessing }
Lead >> MobilePhone: anObject [

	MobilePhone := anObject
]

{ #category : #accessing }
Lead >> Name [

	^ Name
]

{ #category : #accessing }
Lead >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
Lead >> NumberOfEmployees [

	^ NumberOfEmployees
]

{ #category : #accessing }
Lead >> NumberOfEmployees: anObject [

	NumberOfEmployees := anObject
]

{ #category : #accessing }
Lead >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Lead >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Lead >> PartnerAccountId [

	^ PartnerAccountId
]

{ #category : #accessing }
Lead >> PartnerAccountId: anObject [

	PartnerAccountId := anObject
]

{ #category : #accessing }
Lead >> Phone [

	^ Phone
]

{ #category : #accessing }
Lead >> Phone: anObject [

	Phone := anObject
]

{ #category : #accessing }
Lead >> PhotoUrl [

	^ PhotoUrl
]

{ #category : #accessing }
Lead >> PhotoUrl: anObject [

	PhotoUrl := anObject
]

{ #category : #accessing }
Lead >> PostalCode [

	^ PostalCode
]

{ #category : #accessing }
Lead >> PostalCode: anObject [

	PostalCode := anObject
]

{ #category : #accessing }
Lead >> Rating [

	^ Rating
]

{ #category : #accessing }
Lead >> Rating: anObject [

	Rating := anObject
]

{ #category : #accessing }
Lead >> RecordTypeId [

	^ RecordTypeId
]

{ #category : #accessing }
Lead >> RecordTypeId: anObject [

	RecordTypeId := anObject
]

{ #category : #accessing }
Lead >> Salutation [

	^ Salutation
]

{ #category : #accessing }
Lead >> Salutation: anObject [

	Salutation := anObject
]

{ #category : #accessing }
Lead >> ScoreIntelligenceId [

	^ ScoreIntelligenceId
]

{ #category : #accessing }
Lead >> ScoreIntelligenceId: anObject [

	ScoreIntelligenceId := anObject
]

{ #category : #accessing }
Lead >> State [

	^ State
]

{ #category : #accessing }
Lead >> State: anObject [

	State := anObject
]

{ #category : #accessing }
Lead >> StateCode [

	^ StateCode
]

{ #category : #accessing }
Lead >> StateCode: anObject [

	StateCode := anObject
]

{ #category : #accessing }
Lead >> Status [

	^ Status
]

{ #category : #accessing }
Lead >> Status: anObject [

	Status := anObject
]

{ #category : #accessing }
Lead >> Street [

	^ Street
]

{ #category : #accessing }
Lead >> Street: anObject [

	Street := anObject
]

{ #category : #accessing }
Lead >> Suffix [

	^ Suffix
]

{ #category : #accessing }
Lead >> Suffix: anObject [

	Suffix := anObject
]

{ #category : #accessing }
Lead >> Title [

	^ Title
]

{ #category : #accessing }
Lead >> Title: anObject [

	Title := anObject
]

{ #category : #accessing }
Lead >> Website [

	^ Website
]

{ #category : #accessing }
Lead >> Website: anObject [

	Website := anObject
]

{ #category : #initialization }
Lead >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Lead'.
	self excludedFields:
		#( 'ActionCadenceAssigneeId' 'ActionCadenceId' 'ActivityMetricId'
		   'Address' 'AnnualRevenue' 'CleanStatus' 'ConnectionReceivedId'
		   'ConnectionSentId' 'ConvertedAccountId' 'ConvertedContactId'
		   'ConvertedDate' 'ConvertedOpportunityId' 'CountryCode'
		   'CurrencyIsoCode' 'Division' 'EmailBouncedDate'
		   'EmailBouncedReason' 'FirstCallDateTime' 'FirstEmailDateTime'
		   'GeocodeAccuracy' 'HasOptedOutOfEmail' 'HasOptedOutOfFax'
		   'IsConverted' 'IsDeleted' 'Jigsaw' 'LastActivityDate'
		   'LastReferencedDate' 'LastViewedDate' 'MasterRecordId'
		   'MiddleName' 'Name' 'OwnerId' 'PartnerAccountId'
		   'PhotoUrl' 'RecordTypeId' 'ScoreIntelligenceId'
		   'StateCode' 'Suffix' )
]
