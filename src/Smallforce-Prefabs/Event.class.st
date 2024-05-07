"
I represent an Event object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_event.htm
"
Class {
	#name : #Event,
	#superclass : #SObject,
	#instVars : [
		'AcceptedEventInviteeIds',
		'AccountId',
		'ActivityDate',
		'ActivityDateTime',
		'ClientGuid',
		'CurrencyIsoCode',
		'DeclinedEventInviteeIds',
		'Description',
		'Division',
		'DurationInMinutes',
		'EndDate',
		'EndDateTime',
		'EventSubtype',
		'EventWhoIds',
		'GroupEventType',
		'IsAllDayEvent',
		'IsArchived',
		'IsChild',
		'IsClientManaged',
		'IsGroupEvent',
		'IsPrivate',
		'IsRecurrence',
		'IsRecurrence2',
		'IsRecurrence2Exception',
		'IsRecurrence2Exclusion',
		'IsReminderSet',
		'IsVisibleInSelfService',
		'Location',
		'OwnerId',
		'Recurrence2PatternStartDate',
		'Recurrence2PatternText',
		'Recurrence2PatternTimeZone',
		'Recurrence2PatternVersion',
		'RecurrenceActivityId',
		'RecurrenceDayOfMonth',
		'RecurrenceDayOfWeekMask',
		'RecurrenceEndDateOnly',
		'RecurrenceInstance',
		'RecurrenceInterval',
		'RecurrenceMonthOfYear',
		'RecurrenceStartDateTime',
		'RecurrenceTimeZoneSidKey',
		'RecurrenceType',
		'ReminderDateTime',
		'ShowAs',
		'StartDateTime',
		'Subject',
		'Type',
		'UndecidedEventInviteeIds',
		'WhatCount',
		'WhatId',
		'WhoCount',
		'WhoId'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Event >> AcceptedEventInviteeIds [

	^ AcceptedEventInviteeIds
]

{ #category : #accessing }
Event >> AcceptedEventInviteeIds: anObject [

	AcceptedEventInviteeIds := anObject
]

{ #category : #accessing }
Event >> AccountId [

	^ AccountId
]

{ #category : #accessing }
Event >> AccountId: anObject [

	AccountId := anObject
]

{ #category : #accessing }
Event >> ActivityDate [

	^ ActivityDate
]

{ #category : #accessing }
Event >> ActivityDate: anObject [

	ActivityDate := anObject
]

{ #category : #accessing }
Event >> ActivityDateTime [

	^ ActivityDateTime
]

{ #category : #accessing }
Event >> ActivityDateTime: anObject [

	ActivityDateTime := anObject
]

{ #category : #accessing }
Event >> ClientGuid [

	^ ClientGuid
]

{ #category : #accessing }
Event >> ClientGuid: anObject [

	ClientGuid := anObject
]

{ #category : #accessing }
Event >> CurrencyIsoCode [

	^ CurrencyIsoCode
]

{ #category : #accessing }
Event >> CurrencyIsoCode: anObject [

	CurrencyIsoCode := anObject
]

{ #category : #accessing }
Event >> DeclinedEventInviteeIds [

	^ DeclinedEventInviteeIds
]

{ #category : #accessing }
Event >> DeclinedEventInviteeIds: anObject [

	DeclinedEventInviteeIds := anObject
]

{ #category : #accessing }
Event >> Description [

	^ Description
]

{ #category : #accessing }
Event >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Event >> Division [

	^ Division
]

{ #category : #accessing }
Event >> Division: anObject [

	Division := anObject
]

{ #category : #accessing }
Event >> DurationInMinutes [

	^ DurationInMinutes
]

{ #category : #accessing }
Event >> DurationInMinutes: anObject [

	DurationInMinutes := anObject
]

{ #category : #accessing }
Event >> EndDate [

	^ EndDate
]

{ #category : #accessing }
Event >> EndDate: anObject [

	EndDate := anObject
]

{ #category : #accessing }
Event >> EndDateTime [

	^ EndDateTime
]

{ #category : #accessing }
Event >> EndDateTime: anObject [

	EndDateTime := anObject
]

{ #category : #accessing }
Event >> EventSubtype [

	^ EventSubtype
]

{ #category : #accessing }
Event >> EventSubtype: anObject [

	EventSubtype := anObject
]

{ #category : #accessing }
Event >> EventWhoIds [

	^ EventWhoIds
]

{ #category : #accessing }
Event >> EventWhoIds: anObject [

	EventWhoIds := anObject
]

{ #category : #accessing }
Event >> GroupEventType [

	^ GroupEventType
]

{ #category : #accessing }
Event >> GroupEventType: anObject [

	GroupEventType := anObject
]

{ #category : #accessing }
Event >> IsAllDayEvent [

	^ IsAllDayEvent
]

{ #category : #accessing }
Event >> IsAllDayEvent: anObject [

	IsAllDayEvent := anObject
]

{ #category : #accessing }
Event >> IsArchived [

	^ IsArchived
]

{ #category : #accessing }
Event >> IsArchived: anObject [

	IsArchived := anObject
]

{ #category : #accessing }
Event >> IsChild [

	^ IsChild
]

{ #category : #accessing }
Event >> IsChild: anObject [

	IsChild := anObject
]

{ #category : #accessing }
Event >> IsClientManaged [

	^ IsClientManaged
]

{ #category : #accessing }
Event >> IsClientManaged: anObject [

	IsClientManaged := anObject
]

{ #category : #accessing }
Event >> IsGroupEvent [

	^ IsGroupEvent
]

{ #category : #accessing }
Event >> IsGroupEvent: anObject [

	IsGroupEvent := anObject
]

{ #category : #accessing }
Event >> IsPrivate [

	^ IsPrivate
]

{ #category : #accessing }
Event >> IsPrivate: anObject [

	IsPrivate := anObject
]

{ #category : #accessing }
Event >> IsRecurrence [

	^ IsRecurrence
]

{ #category : #accessing }
Event >> IsRecurrence2 [

	^ IsRecurrence2
]

{ #category : #accessing }
Event >> IsRecurrence2: anObject [

	IsRecurrence2 := anObject
]

{ #category : #accessing }
Event >> IsRecurrence2Exception [

	^ IsRecurrence2Exception
]

{ #category : #accessing }
Event >> IsRecurrence2Exception: anObject [

	IsRecurrence2Exception := anObject
]

{ #category : #accessing }
Event >> IsRecurrence2Exclusion [

	^ IsRecurrence2Exclusion
]

{ #category : #accessing }
Event >> IsRecurrence2Exclusion: anObject [

	IsRecurrence2Exclusion := anObject
]

{ #category : #accessing }
Event >> IsRecurrence: anObject [

	IsRecurrence := anObject
]

{ #category : #accessing }
Event >> IsReminderSet [

	^ IsReminderSet
]

{ #category : #accessing }
Event >> IsReminderSet: anObject [

	IsReminderSet := anObject
]

{ #category : #accessing }
Event >> IsVisibleInSelfService [

	^ IsVisibleInSelfService
]

{ #category : #accessing }
Event >> IsVisibleInSelfService: anObject [

	IsVisibleInSelfService := anObject
]

{ #category : #accessing }
Event >> Location [

	^ Location
]

{ #category : #accessing }
Event >> Location: anObject [

	Location := anObject
]

{ #category : #accessing }
Event >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Event >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Event >> Recurrence2PatternStartDate [

	^ Recurrence2PatternStartDate
]

{ #category : #accessing }
Event >> Recurrence2PatternStartDate: anObject [

	Recurrence2PatternStartDate := anObject
]

{ #category : #accessing }
Event >> Recurrence2PatternText [

	^ Recurrence2PatternText
]

{ #category : #accessing }
Event >> Recurrence2PatternText: anObject [

	Recurrence2PatternText := anObject
]

{ #category : #accessing }
Event >> Recurrence2PatternTimeZone [

	^ Recurrence2PatternTimeZone
]

{ #category : #accessing }
Event >> Recurrence2PatternTimeZone: anObject [

	Recurrence2PatternTimeZone := anObject
]

{ #category : #accessing }
Event >> Recurrence2PatternVersion [

	^ Recurrence2PatternVersion
]

{ #category : #accessing }
Event >> Recurrence2PatternVersion: anObject [

	Recurrence2PatternVersion := anObject
]

{ #category : #accessing }
Event >> RecurrenceActivityId [

	^ RecurrenceActivityId
]

{ #category : #accessing }
Event >> RecurrenceActivityId: anObject [

	RecurrenceActivityId := anObject
]

{ #category : #accessing }
Event >> RecurrenceDayOfMonth [

	^ RecurrenceDayOfMonth
]

{ #category : #accessing }
Event >> RecurrenceDayOfMonth: anObject [

	RecurrenceDayOfMonth := anObject
]

{ #category : #accessing }
Event >> RecurrenceDayOfWeekMask [

	^ RecurrenceDayOfWeekMask
]

{ #category : #accessing }
Event >> RecurrenceDayOfWeekMask: anObject [

	RecurrenceDayOfWeekMask := anObject
]

{ #category : #accessing }
Event >> RecurrenceEndDateOnly [

	^ RecurrenceEndDateOnly
]

{ #category : #accessing }
Event >> RecurrenceEndDateOnly: anObject [

	RecurrenceEndDateOnly := anObject
]

{ #category : #accessing }
Event >> RecurrenceInstance [

	^ RecurrenceInstance
]

{ #category : #accessing }
Event >> RecurrenceInstance: anObject [

	RecurrenceInstance := anObject
]

{ #category : #accessing }
Event >> RecurrenceInterval [

	^ RecurrenceInterval
]

{ #category : #accessing }
Event >> RecurrenceInterval: anObject [

	RecurrenceInterval := anObject
]

{ #category : #accessing }
Event >> RecurrenceMonthOfYear [

	^ RecurrenceMonthOfYear
]

{ #category : #accessing }
Event >> RecurrenceMonthOfYear: anObject [

	RecurrenceMonthOfYear := anObject
]

{ #category : #accessing }
Event >> RecurrenceStartDateTime [

	^ RecurrenceStartDateTime
]

{ #category : #accessing }
Event >> RecurrenceStartDateTime: anObject [

	RecurrenceStartDateTime := anObject
]

{ #category : #accessing }
Event >> RecurrenceTimeZoneSidKey [

	^ RecurrenceTimeZoneSidKey
]

{ #category : #accessing }
Event >> RecurrenceTimeZoneSidKey: anObject [

	RecurrenceTimeZoneSidKey := anObject
]

{ #category : #accessing }
Event >> RecurrenceType [

	^ RecurrenceType
]

{ #category : #accessing }
Event >> RecurrenceType: anObject [

	RecurrenceType := anObject
]

{ #category : #accessing }
Event >> ReminderDateTime [

	^ ReminderDateTime
]

{ #category : #accessing }
Event >> ReminderDateTime: anObject [

	ReminderDateTime := anObject
]

{ #category : #accessing }
Event >> ShowAs [

	^ ShowAs
]

{ #category : #accessing }
Event >> ShowAs: anObject [

	ShowAs := anObject
]

{ #category : #accessing }
Event >> StartDateTime [

	^ StartDateTime
]

{ #category : #accessing }
Event >> StartDateTime: anObject [

	StartDateTime := anObject
]

{ #category : #accessing }
Event >> Subject [

	^ Subject
]

{ #category : #accessing }
Event >> Subject: anObject [

	Subject := anObject
]

{ #category : #accessing }
Event >> Type [

	^ Type
]

{ #category : #accessing }
Event >> Type: anObject [

	Type := anObject
]

{ #category : #accessing }
Event >> UndecidedEventInviteeIds [

	^ UndecidedEventInviteeIds
]

{ #category : #accessing }
Event >> UndecidedEventInviteeIds: anObject [

	UndecidedEventInviteeIds := anObject
]

{ #category : #accessing }
Event >> WhatCount [

	^ WhatCount
]

{ #category : #accessing }
Event >> WhatCount: anObject [

	WhatCount := anObject
]

{ #category : #accessing }
Event >> WhatId [

	^ WhatId
]

{ #category : #accessing }
Event >> WhatId: anObject [

	WhatId := anObject
]

{ #category : #accessing }
Event >> WhoCount [

	^ WhoCount
]

{ #category : #accessing }
Event >> WhoCount: anObject [

	WhoCount := anObject
]

{ #category : #accessing }
Event >> WhoId [

	^ WhoId
]

{ #category : #accessing }
Event >> WhoId: anObject [

	WhoId := anObject
]

{ #category : #initialization }
Event >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Event'.
	self excludedFields:
		#( 'CreatedById' 'LastModifiedById' 'EndDate' 'GroupEventType'
		   'IsRecurrence' 'IsRecurrence2' 'IsRecurrence2Exception'
		   'IsRecurrence2Exclusion' 'Recurrence2PatternStartDate'
		   'RecurrenceActivityId' )
]
