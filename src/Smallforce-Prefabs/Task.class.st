"
I represent a Task object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_task.htm
"
Class {
	#name : #Task,
	#superclass : #SObject,
	#instVars : [
		'AccountId',
		'ActivityDate',
		'CallDisposition',
		'CallDurationInSeconds',
		'CallObject',
		'CallType',
		'CompletedDateTime',
		'ConnectionReceivedId',
		'ConnectionSentId',
		'Description',
		'IsArchived',
		'IsClosed',
		'IsHighPriority',
		'IsRecurrence',
		'IsReminderSet',
		'IsVisibleInSelfService',
		'OwnerId',
		'Priority',
		'RecurrenceActivityId',
		'RecurrenceDayOfMonth',
		'RecurrenceDayOfWeekMask',
		'RecurrenceEndDateOnly',
		'RecurrenceInstance',
		'RecurrenceInterval',
		'RecurrenceMonthOfYear',
		'RecurrenceRegeneratedType',
		'RecurrenceStartDateOnly',
		'RecurrenceTimeZonSidKey',
		'RecurrenceType',
		'ReminderDateTime',
		'Status',
		'Subject',
		'TaskSubtype',
		'TaskWhoIds',
		'Type',
		'WhatCount',
		'WhatId',
		'WhoCount',
		'WhoId'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Task >> AccountId [

	^ AccountId
]

{ #category : #accessing }
Task >> AccountId: anObject [

	AccountId := anObject
]

{ #category : #accessing }
Task >> ActivityDate [

	^ ActivityDate
]

{ #category : #accessing }
Task >> ActivityDate: anObject [

	ActivityDate := anObject
]

{ #category : #accessing }
Task >> CallDisposition [

	^ CallDisposition
]

{ #category : #accessing }
Task >> CallDisposition: anObject [

	CallDisposition := anObject
]

{ #category : #accessing }
Task >> CallDurationInSeconds [

	^ CallDurationInSeconds
]

{ #category : #accessing }
Task >> CallDurationInSeconds: anObject [

	CallDurationInSeconds := anObject
]

{ #category : #accessing }
Task >> CallObject [

	^ CallObject
]

{ #category : #accessing }
Task >> CallObject: anObject [

	CallObject := anObject
]

{ #category : #accessing }
Task >> CallType [

	^ CallType
]

{ #category : #accessing }
Task >> CallType: anObject [

	CallType := anObject
]

{ #category : #accessing }
Task >> CompletedDateTime [

	^ CompletedDateTime
]

{ #category : #accessing }
Task >> CompletedDateTime: anObject [

	CompletedDateTime := anObject
]

{ #category : #accessing }
Task >> ConnectionReceivedId [

	^ ConnectionReceivedId
]

{ #category : #accessing }
Task >> ConnectionReceivedId: anObject [

	ConnectionReceivedId := anObject
]

{ #category : #accessing }
Task >> ConnectionSentId [

	^ ConnectionSentId
]

{ #category : #accessing }
Task >> ConnectionSentId: anObject [

	ConnectionSentId := anObject
]

{ #category : #accessing }
Task >> Description [

	^ Description
]

{ #category : #accessing }
Task >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Task >> IsArchived [

	^ IsArchived
]

{ #category : #accessing }
Task >> IsArchived: anObject [

	IsArchived := anObject
]

{ #category : #accessing }
Task >> IsClosed [

	^ IsClosed
]

{ #category : #accessing }
Task >> IsClosed: anObject [

	IsClosed := anObject
]

{ #category : #accessing }
Task >> IsHighPriority [

	^ IsHighPriority
]

{ #category : #accessing }
Task >> IsHighPriority: anObject [

	IsHighPriority := anObject
]

{ #category : #accessing }
Task >> IsRecurrence [

	^ IsRecurrence
]

{ #category : #accessing }
Task >> IsRecurrence: anObject [

	IsRecurrence := anObject
]

{ #category : #accessing }
Task >> IsReminderSet [

	^ IsReminderSet
]

{ #category : #accessing }
Task >> IsReminderSet: anObject [

	IsReminderSet := anObject
]

{ #category : #accessing }
Task >> IsVisibleInSelfService [

	^ IsVisibleInSelfService
]

{ #category : #accessing }
Task >> IsVisibleInSelfService: anObject [

	IsVisibleInSelfService := anObject
]

{ #category : #accessing }
Task >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Task >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Task >> Priority [

	^ Priority
]

{ #category : #accessing }
Task >> Priority: anObject [

	Priority := anObject
]

{ #category : #accessing }
Task >> RecurrenceActivityId [

	^ RecurrenceActivityId
]

{ #category : #accessing }
Task >> RecurrenceActivityId: anObject [

	RecurrenceActivityId := anObject
]

{ #category : #accessing }
Task >> RecurrenceDayOfMonth [

	^ RecurrenceDayOfMonth
]

{ #category : #accessing }
Task >> RecurrenceDayOfMonth: anObject [

	RecurrenceDayOfMonth := anObject
]

{ #category : #accessing }
Task >> RecurrenceDayOfWeekMask [

	^ RecurrenceDayOfWeekMask
]

{ #category : #accessing }
Task >> RecurrenceDayOfWeekMask: anObject [

	RecurrenceDayOfWeekMask := anObject
]

{ #category : #accessing }
Task >> RecurrenceEndDateOnly [

	^ RecurrenceEndDateOnly
]

{ #category : #accessing }
Task >> RecurrenceEndDateOnly: anObject [

	RecurrenceEndDateOnly := anObject
]

{ #category : #accessing }
Task >> RecurrenceInstance [

	^ RecurrenceInstance
]

{ #category : #accessing }
Task >> RecurrenceInstance: anObject [

	RecurrenceInstance := anObject
]

{ #category : #accessing }
Task >> RecurrenceInterval [

	^ RecurrenceInterval
]

{ #category : #accessing }
Task >> RecurrenceInterval: anObject [

	RecurrenceInterval := anObject
]

{ #category : #accessing }
Task >> RecurrenceMonthOfYear [

	^ RecurrenceMonthOfYear
]

{ #category : #accessing }
Task >> RecurrenceMonthOfYear: anObject [

	RecurrenceMonthOfYear := anObject
]

{ #category : #accessing }
Task >> RecurrenceRegeneratedType [

	^ RecurrenceRegeneratedType
]

{ #category : #accessing }
Task >> RecurrenceRegeneratedType: anObject [

	RecurrenceRegeneratedType := anObject
]

{ #category : #accessing }
Task >> RecurrenceStartDateOnly [

	^ RecurrenceStartDateOnly
]

{ #category : #accessing }
Task >> RecurrenceStartDateOnly: anObject [

	RecurrenceStartDateOnly := anObject
]

{ #category : #accessing }
Task >> RecurrenceTimeZonSidKey [

	^ RecurrenceTimeZonSidKey
]

{ #category : #accessing }
Task >> RecurrenceTimeZonSidKey: anObject [

	RecurrenceTimeZonSidKey := anObject
]

{ #category : #accessing }
Task >> RecurrenceType [

	^ RecurrenceType
]

{ #category : #accessing }
Task >> RecurrenceType: anObject [

	RecurrenceType := anObject
]

{ #category : #accessing }
Task >> ReminderDateTime [

	^ ReminderDateTime
]

{ #category : #accessing }
Task >> ReminderDateTime: anObject [

	ReminderDateTime := anObject
]

{ #category : #accessing }
Task >> Status [

	^ Status
]

{ #category : #accessing }
Task >> Status: anObject [

	Status := anObject
]

{ #category : #accessing }
Task >> Subject [

	^ Subject
]

{ #category : #accessing }
Task >> Subject: anObject [

	Subject := anObject
]

{ #category : #accessing }
Task >> TaskSubtype [

	^ TaskSubtype
]

{ #category : #accessing }
Task >> TaskSubtype: anObject [

	TaskSubtype := anObject
]

{ #category : #accessing }
Task >> TaskWhoIds [

	^ TaskWhoIds
]

{ #category : #accessing }
Task >> TaskWhoIds: anObject [

	TaskWhoIds := anObject
]

{ #category : #accessing }
Task >> Type [

	^ Type
]

{ #category : #accessing }
Task >> Type: anObject [

	Type := anObject
]

{ #category : #accessing }
Task >> WhatCount [

	^ WhatCount
]

{ #category : #accessing }
Task >> WhatCount: anObject [

	WhatCount := anObject
]

{ #category : #accessing }
Task >> WhatId [

	^ WhatId
]

{ #category : #accessing }
Task >> WhatId: anObject [

	WhatId := anObject
]

{ #category : #accessing }
Task >> WhoCount [

	^ WhoCount
]

{ #category : #accessing }
Task >> WhoCount: anObject [

	WhoCount := anObject
]

{ #category : #accessing }
Task >> WhoId [

	^ WhoId
]

{ #category : #accessing }
Task >> WhoId: anObject [

	WhoId := anObject
]

{ #category : #initialization }
Task >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Task'.
	self excludedFields:
		#( 'AccountId' 'CompletedDateTime' 'ConnectionReceivedId'
		   'ConnectionSentId' 'IsArchived' 'IsClosed' 'IsDeleted'
		   'IsHighPriority' 'IsRecurrence' 'IsVisibleInSelfService'
		   'RecurrenceActivityId' 'RecurrenceTimeZonSidKey'
		   'TaskSubtype' 'TaskWhoIds' 'Type' 'WhatCount' 'WhoCount' )
]
