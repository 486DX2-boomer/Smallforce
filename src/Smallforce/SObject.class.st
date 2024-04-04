"
I am an abstract class that represents a Salesforce object. I am designed to be subclassed to provide ""pre-fabbed"" interfaces for working with Salesforce Default Objects, such as Account or Contact. I am also designed to be subclassed by the end user so they can create interfaces for working with their own Salesforce Custom Objects.
"
Class {
	#name : #SObject,
	#superclass : #Object,
	#instVars : [
		'name',
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

{ #category : #accessing }
SObject >> name [

	^ name
]

{ #category : #accessing }
SObject >> name: anObject [

	name := anObject
]
