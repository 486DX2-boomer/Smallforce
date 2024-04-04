"
I am raised if a sfVersion passed to Smallforce fails validation.

Salesforce versions are formatted like this: `v0.60`. Try using the Smallforce versions message to query your org for valid Salesforce versions.
"
Class {
	#name : #InvalidVersionException,
	#superclass : #Error,
	#category : #'Smallforce-Exceptions'
}

{ #category : #accessing }
InvalidVersionException class >> raise [
	
	self signal: 'Invalid version format. Should be in the form "v0.60".'
]
