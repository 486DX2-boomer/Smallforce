"
I am raised if an SObject passed to certain Smallforce methods do not have a record ID, required by certain operations (such as updating or deletion.)
"
Class {
	#name : 'NoIdOnRecordException',
	#superclass : 'Error',
	#category : 'Smallforce-Exceptions',
	#package : 'Smallforce',
	#tag : 'Exceptions'
}

{ #category : 'accessing' }
NoIdOnRecordException class >> raise [

	self signal: 'No ID set on record.'
]
