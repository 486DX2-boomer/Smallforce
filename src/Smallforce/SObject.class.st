"
I am an abstract class that represents a Salesforce object. The class SObject represents a Salesforce object; an instance of SObject represents a Salesforce record of that object. 

I am designed to be subclassed to provide ""pre-fabbed"" interfaces for working with Salesforce Default Objects, such as Account or Contact. I am also designed to be subclassed by the end user so they can create interfaces for working with their own Salesforce Custom Objects. 

SObjects should always have an apiName that corresponds to the object's API name in the Salesforce org, and the initialization of apiName is a subclass responsibility. 

It is intended by the author that you should modify and extend subclasses of SObject to implement custom fields and your org's unique business logic.
"
Class {
	#name : #SObject,
	#superclass : #Object,
	#instVars : [
		'apiName'
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

{ #category : #initialization }
SObject >> initialize [
	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."	
			
	self subclassResponsibility 
]

{ #category : #serializing }
SObject >> toJSON [

	"Return this object's fields as JSON."

	| fields output thisField |
	"Get all the fields (instance variables) of this SObject."
	fields := self class allInstVarNames.
	"Add them to a dict. Skip the fields if they are nil. Also skip the apiName, as that is an external identifier and not a Salesforce object field."
	output := Dictionary new.
	fields do: [ :field | 
		field = 'apiName'
			ifTrue: [ "Skip this iteration to prevent apiName from being added to the JSON."
				 ]
			ifFalse: [ 
				thisField := field asSymbol.
				(self perform: thisField) == nil
					ifTrue: [  ]
					ifFalse: [ 
					output at: field asString put: (self perform: thisField) ] ] ].

	"Serialize the dict to JSON and return it."
	^ STONJSON toString: output
]
