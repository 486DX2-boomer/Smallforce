"
I am raised if a sfVersion passed to Smallforce fails validation.

Salesforce versions are formatted like this: `v60.0`. Try using the Smallforce versions message to query your org for valid Salesforce versions.
"
Class {
	#name : #InvalidVersionException,
	#superclass : #Error,
	#category : #'Smallforce-Exceptions'
}

{ #category : #accessing }
InvalidVersionException class >> raise [
	
	self signal: 'Invalid version format. Should be in the form "v60.0".'
]
