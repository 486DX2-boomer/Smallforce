"
I represent an Opportunity object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunity.htm
"
Class {
	#name : #Opportunity,
	#superclass : #SObject,
	#instVars : [
		'AccountId',
		'AgeInDays',
		'Amount',
		'CampaignId',
		'CloseDate',
		'ConnectionReceivedId',
		'ConnectionSentId',
		'ContactId',
		'ContractId',
		'CurrencyIsoCode',
		'Description',
		'ExpectedRevenue',
		'Fiscal',
		'FiscalQuarter',
		'FiscalYear',
		'ForecastCategory',
		'ForecastCategoryName',
		'HasOpenActivity',
		'HasOpportunityLineItem',
		'HasOverdueTask',
		'IqScore',
		'IsClosed',
		'IsDeleted',
		'IsExcludedFromTerritory2Filter',
		'IsPriorityRecord',
		'IsWon',
		'LastActivityDate',
		'LastActivityInDays',
		'LastAmountChangedHistoryId',
		'LastCloseDateChangedHistoryId',
		'LastReferencedDate',
		'LastStageChangeInDays',
		'LastViewedDate',
		'LeadSource',
		'Name',
		'NextStep',
		'OwnerId',
		'PartnerAccountId',
		'Pricebook2Id',
		'Probability',
		'PushCount',
		'RecordTypeId',
		'StageName',
		'SyncedQuoteID',
		'Territory2Id',
		'TotalOpportunityQuantity',
		'Type'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Opportunity >> AccountId [

	^ AccountId
]

{ #category : #accessing }
Opportunity >> AccountId: anObject [

	AccountId := anObject
]

{ #category : #accessing }
Opportunity >> AgeInDays [

	^ AgeInDays
]

{ #category : #accessing }
Opportunity >> AgeInDays: anObject [

	AgeInDays := anObject
]

{ #category : #accessing }
Opportunity >> Amount [

	^ Amount
]

{ #category : #accessing }
Opportunity >> Amount: anObject [

	Amount := anObject
]

{ #category : #accessing }
Opportunity >> CampaignId [

	^ CampaignId
]

{ #category : #accessing }
Opportunity >> CampaignId: anObject [

	CampaignId := anObject
]

{ #category : #accessing }
Opportunity >> CloseDate [

	^ CloseDate
]

{ #category : #accessing }
Opportunity >> CloseDate: anObject [

	CloseDate := anObject
]

{ #category : #accessing }
Opportunity >> ConnectionReceivedId [

	^ ConnectionReceivedId
]

{ #category : #accessing }
Opportunity >> ConnectionReceivedId: anObject [

	ConnectionReceivedId := anObject
]

{ #category : #accessing }
Opportunity >> ConnectionSentId [

	^ ConnectionSentId
]

{ #category : #accessing }
Opportunity >> ConnectionSentId: anObject [

	ConnectionSentId := anObject
]

{ #category : #accessing }
Opportunity >> ContactId [

	^ ContactId
]

{ #category : #accessing }
Opportunity >> ContactId: anObject [

	ContactId := anObject
]

{ #category : #accessing }
Opportunity >> ContractId [

	^ ContractId
]

{ #category : #accessing }
Opportunity >> ContractId: anObject [

	ContractId := anObject
]

{ #category : #accessing }
Opportunity >> CurrencyIsoCode [

	^ CurrencyIsoCode
]

{ #category : #accessing }
Opportunity >> CurrencyIsoCode: anObject [

	CurrencyIsoCode := anObject
]

{ #category : #accessing }
Opportunity >> Description [

	^ Description
]

{ #category : #accessing }
Opportunity >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Opportunity >> ExpectedRevenue [

	^ ExpectedRevenue
]

{ #category : #accessing }
Opportunity >> ExpectedRevenue: anObject [

	ExpectedRevenue := anObject
]

{ #category : #accessing }
Opportunity >> Fiscal [

	^ Fiscal
]

{ #category : #accessing }
Opportunity >> Fiscal: anObject [

	Fiscal := anObject
]

{ #category : #accessing }
Opportunity >> FiscalQuarter [

	^ FiscalQuarter
]

{ #category : #accessing }
Opportunity >> FiscalQuarter: anObject [

	FiscalQuarter := anObject
]

{ #category : #accessing }
Opportunity >> FiscalYear [

	^ FiscalYear
]

{ #category : #accessing }
Opportunity >> FiscalYear: anObject [

	FiscalYear := anObject
]

{ #category : #accessing }
Opportunity >> ForecastCategory [

	^ ForecastCategory
]

{ #category : #accessing }
Opportunity >> ForecastCategory: anObject [

	ForecastCategory := anObject
]

{ #category : #accessing }
Opportunity >> ForecastCategoryName [

	^ ForecastCategoryName
]

{ #category : #accessing }
Opportunity >> ForecastCategoryName: anObject [

	ForecastCategoryName := anObject
]

{ #category : #accessing }
Opportunity >> HasOpenActivity [

	^ HasOpenActivity
]

{ #category : #accessing }
Opportunity >> HasOpenActivity: anObject [

	HasOpenActivity := anObject
]

{ #category : #accessing }
Opportunity >> HasOpportunityLineItem [

	^ HasOpportunityLineItem
]

{ #category : #accessing }
Opportunity >> HasOpportunityLineItem: anObject [

	HasOpportunityLineItem := anObject
]

{ #category : #accessing }
Opportunity >> HasOverdueTask [

	^ HasOverdueTask
]

{ #category : #accessing }
Opportunity >> HasOverdueTask: anObject [

	HasOverdueTask := anObject
]

{ #category : #accessing }
Opportunity >> IqScore [

	^ IqScore
]

{ #category : #accessing }
Opportunity >> IqScore: anObject [

	IqScore := anObject
]

{ #category : #accessing }
Opportunity >> IsClosed [

	^ IsClosed
]

{ #category : #accessing }
Opportunity >> IsClosed: anObject [

	IsClosed := anObject
]

{ #category : #accessing }
Opportunity >> IsDeleted [

	^ IsDeleted
]

{ #category : #accessing }
Opportunity >> IsDeleted: anObject [

	IsDeleted := anObject
]

{ #category : #accessing }
Opportunity >> IsExcludedFromTerritory2Filter [

	^ IsExcludedFromTerritory2Filter
]

{ #category : #accessing }
Opportunity >> IsExcludedFromTerritory2Filter: anObject [

	IsExcludedFromTerritory2Filter := anObject
]

{ #category : #accessing }
Opportunity >> IsPriorityRecord [

	^ IsPriorityRecord
]

{ #category : #accessing }
Opportunity >> IsPriorityRecord: anObject [

	IsPriorityRecord := anObject
]

{ #category : #accessing }
Opportunity >> IsWon [

	^ IsWon
]

{ #category : #accessing }
Opportunity >> IsWon: anObject [

	IsWon := anObject
]

{ #category : #accessing }
Opportunity >> LastActivityDate [

	^ LastActivityDate
]

{ #category : #accessing }
Opportunity >> LastActivityDate: anObject [

	LastActivityDate := anObject
]

{ #category : #accessing }
Opportunity >> LastActivityInDays [

	^ LastActivityInDays
]

{ #category : #accessing }
Opportunity >> LastActivityInDays: anObject [

	LastActivityInDays := anObject
]

{ #category : #accessing }
Opportunity >> LastAmountChangedHistoryId [

	^ LastAmountChangedHistoryId
]

{ #category : #accessing }
Opportunity >> LastAmountChangedHistoryId: anObject [

	LastAmountChangedHistoryId := anObject
]

{ #category : #accessing }
Opportunity >> LastCloseDateChangedHistoryId [

	^ LastCloseDateChangedHistoryId
]

{ #category : #accessing }
Opportunity >> LastCloseDateChangedHistoryId: anObject [

	LastCloseDateChangedHistoryId := anObject
]

{ #category : #accessing }
Opportunity >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Opportunity >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Opportunity >> LastStageChangeInDays [

	^ LastStageChangeInDays
]

{ #category : #accessing }
Opportunity >> LastStageChangeInDays: anObject [

	LastStageChangeInDays := anObject
]

{ #category : #accessing }
Opportunity >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Opportunity >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Opportunity >> LeadSource [

	^ LeadSource
]

{ #category : #accessing }
Opportunity >> LeadSource: anObject [

	LeadSource := anObject
]

{ #category : #accessing }
Opportunity >> Name [

	^ Name
]

{ #category : #accessing }
Opportunity >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
Opportunity >> NextStep [

	^ NextStep
]

{ #category : #accessing }
Opportunity >> NextStep: anObject [

	NextStep := anObject
]

{ #category : #accessing }
Opportunity >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Opportunity >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Opportunity >> PartnerAccountId [

	^ PartnerAccountId
]

{ #category : #accessing }
Opportunity >> PartnerAccountId: anObject [

	PartnerAccountId := anObject
]

{ #category : #accessing }
Opportunity >> Pricebook2Id [

	^ Pricebook2Id
]

{ #category : #accessing }
Opportunity >> Pricebook2Id: anObject [

	Pricebook2Id := anObject
]

{ #category : #accessing }
Opportunity >> Probability [

	^ Probability
]

{ #category : #accessing }
Opportunity >> Probability: anObject [

	Probability := anObject
]

{ #category : #accessing }
Opportunity >> PushCount [

	^ PushCount
]

{ #category : #accessing }
Opportunity >> PushCount: anObject [

	PushCount := anObject
]

{ #category : #accessing }
Opportunity >> RecordTypeId [

	^ RecordTypeId
]

{ #category : #accessing }
Opportunity >> RecordTypeId: anObject [

	RecordTypeId := anObject
]

{ #category : #accessing }
Opportunity >> StageName [

	^ StageName
]

{ #category : #accessing }
Opportunity >> StageName: anObject [

	StageName := anObject
]

{ #category : #accessing }
Opportunity >> SyncedQuoteID [

	^ SyncedQuoteID
]

{ #category : #accessing }
Opportunity >> SyncedQuoteID: anObject [

	SyncedQuoteID := anObject
]

{ #category : #accessing }
Opportunity >> Territory2Id [

	^ Territory2Id
]

{ #category : #accessing }
Opportunity >> Territory2Id: anObject [

	Territory2Id := anObject
]

{ #category : #accessing }
Opportunity >> TotalOpportunityQuantity [

	^ TotalOpportunityQuantity
]

{ #category : #accessing }
Opportunity >> TotalOpportunityQuantity: anObject [

	TotalOpportunityQuantity := anObject
]

{ #category : #accessing }
Opportunity >> Type [

	^ Type
]

{ #category : #accessing }
Opportunity >> Type: anObject [

	Type := anObject
]

{ #category : #initialization }
Opportunity >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Opportunity'.
	self excludedFields:
		#( 'AgeInDays' 'Amount' 'CampaignId' 'ConnectionReceivedId'
		   'ConnectionSentId' 'ContactId' 'ContractId' 'CurrencyIsoCode'
		   'ExpectedRevenue' 'Fiscal' 'FiscalQuarter' 'FiscalYear'
		   'ForecastCategory' 'HasOpenActivity' 'HasOpportunityLineItem'
		   'HasOverdueTask' 'IqScore' 'IsClosed' 'IsDeleted' 'IsExcludedFromTerritory2Filter'
		   'IsPriorityRecord' 'IsWon' 'LastActivityDate' 'LastActivityInDays'
		   'LastAmountChangedHistoryId' 'LastCloseDateChangedHistoryId'
		   'LastReferencedDate' 'LastStageChangeDate' 'LastStageChangeInDays'
		   'LastViewedDate' 'PartnerAccountId' 'PushCount' 'RecordTypeId'
		   'SyncedQuoteID' 'Territory2Id' )
]
