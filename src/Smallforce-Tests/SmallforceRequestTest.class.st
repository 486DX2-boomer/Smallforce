Class {
	#name : #SmallforceRequestTest,
	#superclass : #TestCase,
	#instVars : [
		'local'
	],
	#category : #'Smallforce-Tests-Base'
}

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> mockRequest [
	"Helper function to provide a mock SmallforceRequest in other tests. Connects to the local testing endpoint provided in setUp."
	| smallforceRequest |
	smallforceRequest := SmallforceRequest
		                     newWithOrg: local
		                     accessToken: '0011aabb'
		                     version: '0.60'.
	^ smallforceRequest
]

{ #category : #running }
SmallforceRequestTest >> setUp [

	super setUp.
	"Provide localhost and port to testing methods."
	local := 'http://localhost:1701'.

	"Create mock server and assign test endpoints"
	Teapot stopAll.
	Teapot on
		GET: '/testMethodGet' -> '{ "message": "Hello World" }';
		GET: '/testMethodGetWithHeaders' -> [ :req | 
				[ req headers at: 'LastModified' ]
					on: KeyNotFound
					do: [ req abort: '{"response": "Error: no header"}' ].

				(req headers at: 'LastModified') = 'yesterday' ifTrue: [ req abort:
						'{"response": "One modification since yesterday"}' ].

				(req headers at: 'LastModified') = 'lastweek' ifTrue: [ req abort: 
						'{"response": "Two modifications since last week"}' ] ];
		start
]

{ #category : #tests }
SmallforceRequestTest >> testInstanceCreation [

	| smallforceRequest testOrg testToken testVersion |
	testOrg := ' https://adjective-animal-0abcd1-dev-ed.my.salesforce.com'.
	testToken := '00aa11bb22cc00'.
	testVersion := '0.60'.
	smallforceRequest := SmallforceRequest
		                     newWithOrg: testOrg
		                     accessToken: testToken
		                     version: testVersion.
	self
		assert: smallforceRequest org equals: testOrg;
		assert: smallforceRequest accessToken equals: testToken;
		assert: smallforceRequest version equals: testVersion;
		assert: (smallforceRequest client) class equals: ZnClient
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodGet [

	| smallforceRequest response mockResponse d |
	smallforceRequest := self mockRequest.
	
	mockResponse := STONJSON fromString: '{ "message": "Hello World" }'.
	response := smallforceRequest methodGet:
		            '/testMethodGet/'.
	self assert: response equals: mockResponse.
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodGetRaw [

	| smallforceRequest response mockResponse |
	smallforceRequest := self mockRequest.

	mockResponse := '{ "message": "Hello World" }'.
	response := smallforceRequest methodGetRaw: '/testMethodGet/'.
	self assert: response equals: mockResponse
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodGetWithHeaders [

	| smallForceRequest headers mockResponseSuccess mockResponseFailure responseShouldSucceed responseShouldFail |
	smallForceRequest := self mockRequest.
	
	headers := Dictionary new.
	headers add: 'LastModified' -> 'yesterday'.
	
	mockResponseSuccess := STONJSON fromString: '{ "response": "One modification since yesterday" }'.
	mockResponseFailure := STONJSON fromString: '{ "response": "Error: no header" }'.
	
	responseShouldSucceed := smallForceRequest
		            methodGet: '/testMethodGetWithHeaders'
		            withHeaders: headers.
	self assert: responseShouldSucceed equals: mockResponseSuccess.
	
	"Create a new smallForceRequest to reset headers."
	smallForceRequest := self mockRequest.
	
	responseShouldFail := smallForceRequest
		methodGet: '/testMethodGetWithHeaders'.
	self assert: responseShouldFail equals: mockResponseFailure.
	
		
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodPatch [
	^ self shouldBeImplemented
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodPost [
	^ self shouldBeImplemented
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testmethodDelete [ 
	^ self shouldBeImplemented
]
