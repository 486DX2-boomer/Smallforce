Extension { #name : 'String' }

{ #category : '*Smallforce' }
String >> deserializeJSON [

	"This is a Smallforce utility method to convert a JSON response from the Salesforce REST API to a Smalltalk object."

	^ STONJSON fromString: self
]
