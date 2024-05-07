"
I represent a Case object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_case.htm
"
Class {
	#name : #Case,
	#superclass : #SObject,
	#instVars : [
		'AccountId',
		'AssetWarrantyID',
		'BusinessHoursId',
		'Comments',
		'CaseNumber',
		'ClosedDate',
		'CommunityId',
		'ConnectionReceivedId',
		'ConnectionSentId',
		'ContactEmail',
		'ContactFax',
		'ContactId',
		'ContactMobile',
		'ContactPhone',
		'CreatorFullPhotoUrl',
		'CreatorName',
		'CreatorSmallPhotoUrl',
		'Description',
		'FeedItemId',
		'HasCommentsUnreadByOwner',
		'HasSelfServiceComments',
		'IsClosed',
		'IsClosedOnCreate',
		'IsDeleted',
		'IsEscalated',
		'IsSelfServiceClosed',
		'IsStopped',
		'IsVisibleInSelfService',
		'Language',
		'LastReferencedDate',
		'LastViewedDate',
		'MasterRecordId',
		'Origin',
		'OwnerId',
		'ParentId',
		'Priority',
		'QuestionId',
		'Reason',
		'RecordTypeId',
		'ServiceContractId',
		'SlaStartDate',
		'SourceId',
		'Status',
		'StopStartDate',
		'Subject',
		'SuppliedCompany',
		'SuppliedEmail',
		'SuppliedName',
		'SuppliedPhone',
		'Type'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Case >> AccountId [

	^ AccountId
]

{ #category : #accessing }
Case >> AccountId: anObject [

	AccountId := anObject
]

{ #category : #accessing }
Case >> AssetWarrantyID [

	^ AssetWarrantyID
]

{ #category : #accessing }
Case >> AssetWarrantyID: anObject [

	AssetWarrantyID := anObject
]

{ #category : #accessing }
Case >> BusinessHoursId [

	^ BusinessHoursId
]

{ #category : #accessing }
Case >> BusinessHoursId: anObject [

	BusinessHoursId := anObject
]

{ #category : #accessing }
Case >> CaseNumber [

	^ CaseNumber
]

{ #category : #accessing }
Case >> CaseNumber: anObject [

	CaseNumber := anObject
]

{ #category : #accessing }
Case >> ClosedDate [

	^ ClosedDate
]

{ #category : #accessing }
Case >> ClosedDate: anObject [

	ClosedDate := anObject
]

{ #category : #accessing }
Case >> Comments [

	^ Comments
]

{ #category : #accessing }
Case >> Comments: anObject [

	Comments := anObject
]

{ #category : #accessing }
Case >> CommunityId [

	^ CommunityId
]

{ #category : #accessing }
Case >> CommunityId: anObject [

	CommunityId := anObject
]

{ #category : #accessing }
Case >> ConnectionReceivedId [

	^ ConnectionReceivedId
]

{ #category : #accessing }
Case >> ConnectionReceivedId: anObject [

	ConnectionReceivedId := anObject
]

{ #category : #accessing }
Case >> ConnectionSentId [

	^ ConnectionSentId
]

{ #category : #accessing }
Case >> ConnectionSentId: anObject [

	ConnectionSentId := anObject
]

{ #category : #accessing }
Case >> ContactEmail [

	^ ContactEmail
]

{ #category : #accessing }
Case >> ContactEmail: anObject [

	ContactEmail := anObject
]

{ #category : #accessing }
Case >> ContactFax [

	^ ContactFax
]

{ #category : #accessing }
Case >> ContactFax: anObject [

	ContactFax := anObject
]

{ #category : #accessing }
Case >> ContactId [

	^ ContactId
]

{ #category : #accessing }
Case >> ContactId: anObject [

	ContactId := anObject
]

{ #category : #accessing }
Case >> ContactMobile [

	^ ContactMobile
]

{ #category : #accessing }
Case >> ContactMobile: anObject [

	ContactMobile := anObject
]

{ #category : #accessing }
Case >> ContactPhone [

	^ ContactPhone
]

{ #category : #accessing }
Case >> ContactPhone: anObject [

	ContactPhone := anObject
]

{ #category : #accessing }
Case >> CreatorFullPhotoUrl [

	^ CreatorFullPhotoUrl
]

{ #category : #accessing }
Case >> CreatorFullPhotoUrl: anObject [

	CreatorFullPhotoUrl := anObject
]

{ #category : #accessing }
Case >> CreatorName [

	^ CreatorName
]

{ #category : #accessing }
Case >> CreatorName: anObject [

	CreatorName := anObject
]

{ #category : #accessing }
Case >> CreatorSmallPhotoUrl [

	^ CreatorSmallPhotoUrl
]

{ #category : #accessing }
Case >> CreatorSmallPhotoUrl: anObject [

	CreatorSmallPhotoUrl := anObject
]

{ #category : #accessing }
Case >> Description [

	^ Description
]

{ #category : #accessing }
Case >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Case >> FeedItemId [

	^ FeedItemId
]

{ #category : #accessing }
Case >> FeedItemId: anObject [

	FeedItemId := anObject
]

{ #category : #accessing }
Case >> HasCommentsUnreadByOwner [

	^ HasCommentsUnreadByOwner
]

{ #category : #accessing }
Case >> HasCommentsUnreadByOwner: anObject [

	HasCommentsUnreadByOwner := anObject
]

{ #category : #accessing }
Case >> HasSelfServiceComments [

	^ HasSelfServiceComments
]

{ #category : #accessing }
Case >> HasSelfServiceComments: anObject [

	HasSelfServiceComments := anObject
]

{ #category : #accessing }
Case >> IsClosed [

	^ IsClosed
]

{ #category : #accessing }
Case >> IsClosed: anObject [

	IsClosed := anObject
]

{ #category : #accessing }
Case >> IsClosedOnCreate [

	^ IsClosedOnCreate
]

{ #category : #accessing }
Case >> IsClosedOnCreate: anObject [

	IsClosedOnCreate := anObject
]

{ #category : #accessing }
Case >> IsDeleted [

	^ IsDeleted
]

{ #category : #accessing }
Case >> IsDeleted: anObject [

	IsDeleted := anObject
]

{ #category : #accessing }
Case >> IsEscalated [

	^ IsEscalated
]

{ #category : #accessing }
Case >> IsEscalated: anObject [

	IsEscalated := anObject
]

{ #category : #accessing }
Case >> IsSelfServiceClosed [

	^ IsSelfServiceClosed
]

{ #category : #accessing }
Case >> IsSelfServiceClosed: anObject [

	IsSelfServiceClosed := anObject
]

{ #category : #accessing }
Case >> IsStopped [

	^ IsStopped
]

{ #category : #accessing }
Case >> IsStopped: anObject [

	IsStopped := anObject
]

{ #category : #accessing }
Case >> IsVisibleInSelfService [

	^ IsVisibleInSelfService
]

{ #category : #accessing }
Case >> IsVisibleInSelfService: anObject [

	IsVisibleInSelfService := anObject
]

{ #category : #accessing }
Case >> Language [

	^ Language
]

{ #category : #accessing }
Case >> Language: anObject [

	Language := anObject
]

{ #category : #accessing }
Case >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Case >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Case >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Case >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Case >> MasterRecordId [

	^ MasterRecordId
]

{ #category : #accessing }
Case >> MasterRecordId: anObject [

	MasterRecordId := anObject
]

{ #category : #accessing }
Case >> Origin [

	^ Origin
]

{ #category : #accessing }
Case >> Origin: anObject [

	Origin := anObject
]

{ #category : #accessing }
Case >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Case >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Case >> ParentId [

	^ ParentId
]

{ #category : #accessing }
Case >> ParentId: anObject [

	ParentId := anObject
]

{ #category : #accessing }
Case >> Priority [

	^ Priority
]

{ #category : #accessing }
Case >> Priority: anObject [

	Priority := anObject
]

{ #category : #accessing }
Case >> QuestionId [

	^ QuestionId
]

{ #category : #accessing }
Case >> QuestionId: anObject [

	QuestionId := anObject
]

{ #category : #accessing }
Case >> Reason [

	^ Reason
]

{ #category : #accessing }
Case >> Reason: anObject [

	Reason := anObject
]

{ #category : #accessing }
Case >> RecordTypeId [

	^ RecordTypeId
]

{ #category : #accessing }
Case >> RecordTypeId: anObject [

	RecordTypeId := anObject
]

{ #category : #accessing }
Case >> ServiceContractId [

	^ ServiceContractId
]

{ #category : #accessing }
Case >> ServiceContractId: anObject [

	ServiceContractId := anObject
]

{ #category : #accessing }
Case >> SlaStartDate [

	^ SlaStartDate
]

{ #category : #accessing }
Case >> SlaStartDate: anObject [

	SlaStartDate := anObject
]

{ #category : #accessing }
Case >> SourceId [

	^ SourceId
]

{ #category : #accessing }
Case >> SourceId: anObject [

	SourceId := anObject
]

{ #category : #accessing }
Case >> Status [

	^ Status
]

{ #category : #accessing }
Case >> Status: anObject [

	Status := anObject
]

{ #category : #accessing }
Case >> StopStartDate [

	^ StopStartDate
]

{ #category : #accessing }
Case >> StopStartDate: anObject [

	StopStartDate := anObject
]

{ #category : #accessing }
Case >> Subject [

	^ Subject
]

{ #category : #accessing }
Case >> Subject: anObject [

	Subject := anObject
]

{ #category : #accessing }
Case >> SuppliedCompany [

	^ SuppliedCompany
]

{ #category : #accessing }
Case >> SuppliedCompany: anObject [

	SuppliedCompany := anObject
]

{ #category : #accessing }
Case >> SuppliedEmail [

	^ SuppliedEmail
]

{ #category : #accessing }
Case >> SuppliedEmail: anObject [

	SuppliedEmail := anObject
]

{ #category : #accessing }
Case >> SuppliedName [

	^ SuppliedName
]

{ #category : #accessing }
Case >> SuppliedName: anObject [

	SuppliedName := anObject
]

{ #category : #accessing }
Case >> SuppliedPhone [

	^ SuppliedPhone
]

{ #category : #accessing }
Case >> SuppliedPhone: anObject [

	SuppliedPhone := anObject
]

{ #category : #accessing }
Case >> Type [

	^ Type
]

{ #category : #accessing }
Case >> Type: anObject [

	Type := anObject
]

{ #category : #initialization }
Case >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Case'.
	self excludedFields:
		#( 'CaseNumber' 'ClosedDate' 'ContactEmail' 'ContactFax'
		   'ContactMobile' 'ContactPhone' 'HasCommentsUnreadByOwner'
		   'IsClosed' 'IsDeleted' )
]
