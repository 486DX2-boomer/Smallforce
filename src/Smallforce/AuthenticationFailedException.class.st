"
I am raised if an attempt to access the Salesforce API fails authentication.

`'[{""message"":""Session expired or invalid"",""errorCode"":""INVALID_SESSION_ID""}]'`

"
Class {
	#name : #AuthenticationFailedException,
	#superclass : #Error,
	#category : #'Smallforce-Exceptions'
}

{ #category : #accessing }
AuthenticationFailedException class >> raise [

	self signal: 'Authentication failed: check your access token'
]
