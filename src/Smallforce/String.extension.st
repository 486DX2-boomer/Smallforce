Extension { #name : #String }

{ #category : #'*Smallforce' }
String >> deserializeJSON [

	"This is a Smallforce utility method to convert a JSON response from the Salesforce REST API to a Smalltalk object with fluid syntax."

	"For example: 
	sf := Smallforce new accessToken: 'yourtoken'; org: 'yourorg'; version 'v60.0'.
	sf versions. -> a WideString
	sf versions deserializeJSON. -> an Array"

	^ STONJSON fromString: self
]
