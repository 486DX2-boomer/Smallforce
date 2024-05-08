"
I am an abstract class that represents a Salesforce object. The class SObject represents a Salesforce object; an instance of SObject represents a Salesforce record of that object. 

I am designed to be subclassed to provide ""pre-fabbed"" interfaces for working with Salesforce Default Objects, such as Account or Contact. I am also designed to be subclassed by the end user so they can create interfaces for working with their own Salesforce Custom Objects. 

SObjects should always have an apiName that corresponds to the object's API name in the Salesforce org, and the initialization of apiName is a subclass responsibility. Instances of SObject can be assigned a record ID corresponding to the record's unique ID in Salesforce, which is required for some operations such as updating and deletion.

The instance variables of an SObject, if intended to correspond to fields on Salesforce records, should use the Field Name, **not** Field Label, of the object's fields in Salesforce. Field Names start with capital letters in Salesforce, which does break Smalltalk convention. Take a look at the included Prefabs for examples of how this looks.

The break in convention is necessary because Smallforce dynamically maps SObjects to and from Salesforce records based on instance variable names and accessor names in a case-sensitive way. When you are implementing custom business logic on an SObject, you should implement message names with the camelCase convention. Smallforce will not attempt to serialize messages that begin with lowercase letters, or fields that are defined in the excludedFields variable.

Some fields are read-only on Salesforce, while some are enabled only under certain conditions. Because of this, they can cause some Smallforce messages, such as the syncToSalesforce message, to fail. You should add those fields to excludedFields on SObject subclasses. Fields added to excludedFields are not sent in requests that attempt to update Salesforce records, but will be set on local SObjects if they are readable from Salesforce.

It is intended by the author that you should modify and extend subclasses of SObject to implement custom fields and your org's unique business logic.
"
Class {
	#name : #SObject,
	#superclass : #Object,
	#instVars : [
		'apiName',
		'recordId',
		'excludedFields'
	],
	#category : #'Smallforce-Base'
}

{ #category : #accessing }
SObject >> apiName [

	^ apiName
]

{ #category : #accessing }
SObject >> apiName: anObject [

	apiName := anObject
]

{ #category : #accessing }
SObject >> excludedFields [

	^ excludedFields
]

{ #category : #accessing }
SObject >> excludedFields: anObject [

	excludedFields := anObject
]

{ #category : #testing }
SObject >> hasId [

	"Return true if the recordId on this instance is set, return false if not."

	self recordId notNil
		ifTrue: [ ^ true ]
		ifFalse: [ ^ false ]
]

{ #category : #initialization }
SObject >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self subclassResponsibility
]

{ #category : #testing }
SObject >> noId [

	"Return true if the recordId on this instance is not set."

	self recordId ifNil: [ ^ true ] ifNotNil: [ ^ false ]
]

{ #category : #accessing }
SObject >> recordId [

	^ recordId
]

{ #category : #accessing }
SObject >> recordId: anObject [

	recordId := anObject
]

{ #category : #serializing }
SObject >> toJSON [

	"Return this object's fields as JSON. Nil or lowercase variables are skipped."

	| fields filtered |
	fields := self class instanceVariables.
	filtered := Dictionary new.
	"Skip nil or lowercase fields."
	fields do: [ :f | 
		f name first isUppercase ifTrue: [ 
			(self perform: f name asSymbol) == nil ifFalse: [ 
				filtered at: f name put: (self perform: f name asSymbol) ] ] ].

	^ STONJSON toString: filtered
]
