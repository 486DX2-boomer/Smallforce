"
I represent a Campaign object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_campaign.htm
"
Class {
	#name : #Campaign,
	#superclass : #SObject,
	#instVars : [
		'ActualCost',
		'AmountAllOpportunities',
		'AmountWonOpportunities',
		'BudgetedCost',
		'CampaignImageId',
		'CampaignMemberRecordTypeId',
		'CurrencyIsoCode',
		'Description',
		'EndDate',
		'ExpectedResponse',
		'ExpectedRevenue',
		'HierarchyActualCost',
		'HierarchyBudgetedCost',
		'HierarchyExpectedRevenue',
		'HierarchyNumberSent',
		'IsActive',
		'LastActivityDate',
		'LastReferencedDate',
		'LastViewedDate',
		'Name',
		'NumberOfContacts',
		'NumberOfConvertedLeads',
		'NumberOfLeads',
		'NumberOfOpportunities',
		'NumberOfResponses',
		'NumberOfWonOpportunities',
		'NumberSent',
		'OwnerId',
		'ParentCampaign',
		'ParentId',
		'RecordTypeId',
		'StartDate',
		'Status',
		'TenantId',
		'TotalAmountAllOpportunities',
		'TotalAmountAllWonOpportunities',
		'TotalNumberOfContacts',
		'TotalNumberofConvertedLeads',
		'TotalNumberofLeads',
		'TotalNumberofOpportunities',
		'TotalNumberofResponses',
		'TotalNumberofWonOpportunities',
		'Type'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Campaign >> ActualCost [

	^ ActualCost
]

{ #category : #accessing }
Campaign >> ActualCost: anObject [

	ActualCost := anObject
]

{ #category : #accessing }
Campaign >> AmountAllOpportunities [

	^ AmountAllOpportunities
]

{ #category : #accessing }
Campaign >> AmountAllOpportunities: anObject [

	AmountAllOpportunities := anObject
]

{ #category : #accessing }
Campaign >> AmountWonOpportunities [

	^ AmountWonOpportunities
]

{ #category : #accessing }
Campaign >> AmountWonOpportunities: anObject [

	AmountWonOpportunities := anObject
]

{ #category : #accessing }
Campaign >> BudgetedCost [

	^ BudgetedCost
]

{ #category : #accessing }
Campaign >> BudgetedCost: anObject [

	BudgetedCost := anObject
]

{ #category : #accessing }
Campaign >> CampaignImageId [

	^ CampaignImageId
]

{ #category : #accessing }
Campaign >> CampaignImageId: anObject [

	CampaignImageId := anObject
]

{ #category : #accessing }
Campaign >> CampaignMemberRecordTypeId [

	^ CampaignMemberRecordTypeId
]

{ #category : #accessing }
Campaign >> CampaignMemberRecordTypeId: anObject [

	CampaignMemberRecordTypeId := anObject
]

{ #category : #accessing }
Campaign >> CurrencyIsoCode [

	^ CurrencyIsoCode
]

{ #category : #accessing }
Campaign >> CurrencyIsoCode: anObject [

	CurrencyIsoCode := anObject
]

{ #category : #accessing }
Campaign >> Description [

	^ Description
]

{ #category : #accessing }
Campaign >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Campaign >> EndDate [

	^ EndDate
]

{ #category : #accessing }
Campaign >> EndDate: anObject [

	EndDate := anObject
]

{ #category : #accessing }
Campaign >> ExpectedResponse [

	^ ExpectedResponse
]

{ #category : #accessing }
Campaign >> ExpectedResponse: anObject [

	ExpectedResponse := anObject
]

{ #category : #accessing }
Campaign >> ExpectedRevenue [

	^ ExpectedRevenue
]

{ #category : #accessing }
Campaign >> ExpectedRevenue: anObject [

	ExpectedRevenue := anObject
]

{ #category : #accessing }
Campaign >> HierarchyActualCost [

	^ HierarchyActualCost
]

{ #category : #accessing }
Campaign >> HierarchyActualCost: anObject [

	HierarchyActualCost := anObject
]

{ #category : #accessing }
Campaign >> HierarchyBudgetedCost [

	^ HierarchyBudgetedCost
]

{ #category : #accessing }
Campaign >> HierarchyBudgetedCost: anObject [

	HierarchyBudgetedCost := anObject
]

{ #category : #accessing }
Campaign >> HierarchyExpectedRevenue [

	^ HierarchyExpectedRevenue
]

{ #category : #accessing }
Campaign >> HierarchyExpectedRevenue: anObject [

	HierarchyExpectedRevenue := anObject
]

{ #category : #accessing }
Campaign >> HierarchyNumberSent [

	^ HierarchyNumberSent
]

{ #category : #accessing }
Campaign >> HierarchyNumberSent: anObject [

	HierarchyNumberSent := anObject
]

{ #category : #accessing }
Campaign >> IsActive [

	^ IsActive
]

{ #category : #accessing }
Campaign >> IsActive: anObject [

	IsActive := anObject
]

{ #category : #accessing }
Campaign >> LastActivityDate [

	^ LastActivityDate
]

{ #category : #accessing }
Campaign >> LastActivityDate: anObject [

	LastActivityDate := anObject
]

{ #category : #accessing }
Campaign >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Campaign >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Campaign >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Campaign >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Campaign >> Name [

	^ Name
]

{ #category : #accessing }
Campaign >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
Campaign >> NumberOfContacts [

	^ NumberOfContacts
]

{ #category : #accessing }
Campaign >> NumberOfContacts: anObject [

	NumberOfContacts := anObject
]

{ #category : #accessing }
Campaign >> NumberOfConvertedLeads [

	^ NumberOfConvertedLeads
]

{ #category : #accessing }
Campaign >> NumberOfConvertedLeads: anObject [

	NumberOfConvertedLeads := anObject
]

{ #category : #accessing }
Campaign >> NumberOfLeads [

	^ NumberOfLeads
]

{ #category : #accessing }
Campaign >> NumberOfLeads: anObject [

	NumberOfLeads := anObject
]

{ #category : #accessing }
Campaign >> NumberOfOpportunities [

	^ NumberOfOpportunities
]

{ #category : #accessing }
Campaign >> NumberOfOpportunities: anObject [

	NumberOfOpportunities := anObject
]

{ #category : #accessing }
Campaign >> NumberOfResponses [

	^ NumberOfResponses
]

{ #category : #accessing }
Campaign >> NumberOfResponses: anObject [

	NumberOfResponses := anObject
]

{ #category : #accessing }
Campaign >> NumberOfWonOpportunities [

	^ NumberOfWonOpportunities
]

{ #category : #accessing }
Campaign >> NumberOfWonOpportunities: anObject [

	NumberOfWonOpportunities := anObject
]

{ #category : #accessing }
Campaign >> NumberSent [

	^ NumberSent
]

{ #category : #accessing }
Campaign >> NumberSent: anObject [

	NumberSent := anObject
]

{ #category : #accessing }
Campaign >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Campaign >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Campaign >> ParentCampaign [

	^ ParentCampaign
]

{ #category : #accessing }
Campaign >> ParentCampaign: anObject [

	ParentCampaign := anObject
]

{ #category : #accessing }
Campaign >> ParentId [

	^ ParentId
]

{ #category : #accessing }
Campaign >> ParentId: anObject [

	ParentId := anObject
]

{ #category : #accessing }
Campaign >> RecordTypeId [

	^ RecordTypeId
]

{ #category : #accessing }
Campaign >> RecordTypeId: anObject [

	RecordTypeId := anObject
]

{ #category : #accessing }
Campaign >> StartDate [

	^ StartDate
]

{ #category : #accessing }
Campaign >> StartDate: anObject [

	StartDate := anObject
]

{ #category : #accessing }
Campaign >> Status [

	^ Status
]

{ #category : #accessing }
Campaign >> Status: anObject [

	Status := anObject
]

{ #category : #accessing }
Campaign >> TenantId [

	^ TenantId
]

{ #category : #accessing }
Campaign >> TenantId: anObject [

	TenantId := anObject
]

{ #category : #accessing }
Campaign >> TotalAmountAllOpportunities [

	^ TotalAmountAllOpportunities
]

{ #category : #accessing }
Campaign >> TotalAmountAllOpportunities: anObject [

	TotalAmountAllOpportunities := anObject
]

{ #category : #accessing }
Campaign >> TotalAmountAllWonOpportunities [

	^ TotalAmountAllWonOpportunities
]

{ #category : #accessing }
Campaign >> TotalAmountAllWonOpportunities: anObject [

	TotalAmountAllWonOpportunities := anObject
]

{ #category : #accessing }
Campaign >> TotalNumberOfContacts [

	^ TotalNumberOfContacts
]

{ #category : #accessing }
Campaign >> TotalNumberOfContacts: anObject [

	TotalNumberOfContacts := anObject
]

{ #category : #accessing }
Campaign >> TotalNumberofConvertedLeads [

	^ TotalNumberofConvertedLeads
]

{ #category : #accessing }
Campaign >> TotalNumberofConvertedLeads: anObject [

	TotalNumberofConvertedLeads := anObject
]

{ #category : #accessing }
Campaign >> TotalNumberofLeads [

	^ TotalNumberofLeads
]

{ #category : #accessing }
Campaign >> TotalNumberofLeads: anObject [

	TotalNumberofLeads := anObject
]

{ #category : #accessing }
Campaign >> TotalNumberofOpportunities [

	^ TotalNumberofOpportunities
]

{ #category : #accessing }
Campaign >> TotalNumberofOpportunities: anObject [

	TotalNumberofOpportunities := anObject
]

{ #category : #accessing }
Campaign >> TotalNumberofResponses [

	^ TotalNumberofResponses
]

{ #category : #accessing }
Campaign >> TotalNumberofResponses: anObject [

	TotalNumberofResponses := anObject
]

{ #category : #accessing }
Campaign >> TotalNumberofWonOpportunities [

	^ TotalNumberofWonOpportunities
]

{ #category : #accessing }
Campaign >> TotalNumberofWonOpportunities: anObject [

	TotalNumberofWonOpportunities := anObject
]

{ #category : #accessing }
Campaign >> Type [

	^ Type
]

{ #category : #accessing }
Campaign >> Type: anObject [

	Type := anObject
]

{ #category : #initialization }
Campaign >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Campaign'.
	self excludedFields:
		#( 'AmountAllOpportunities' 'AmountWonOpportunities'
		   'CampaignImageId' 'CurrencyIsoCode' 'HierarchyActualCost'
		   'HierarchyBudgetedCost' 'HierarchyExpectedRevenue'
		   'HierarchyNumberSent' 'LastActivityDate' 'LastReferencedDate'
		   'LastViewedDate' 'NumberOfContacts' 'NumberOfConvertedLeads'
		   'NumberOfLeads' 'NumberOfOpportunities' 'NumberOfResponses'
		   'NumberOfWonOpportunities' 'ParentCampaign' 'RecordTypeId'
		   'TenantId' 'TotalAmountAllOpportunities'
		   'TotalAmountAllWonOpportunities' 'TotalNumberOfContacts'
		   'TotalNumberofConvertedLeads' 'TotalNumberofLeads'
		   'TotalNumberofOpportunities' 'TotalNumberofResponses'
		   'TotalNumberofWonOpportunities' )
]
