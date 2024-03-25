Class {
	#name : #SmallforceRequestTest,
	#superclass : #TestCase,
	#instVars : [
		'local'
	],
	#category : #'Smallforce-Tests-Base'
}

{ #category : #mocking }
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

				(req headers at: 'LastModified') = 'yesterday' ifTrue: [ 
						req abort: '{"response": "One modification since yesterday"}' ].

				(req headers at: 'LastModified') = 'lastweek' ifTrue: [ 
						req abort: '{"response": "Two modifications since last week"}' ] ];
		DELETE: '/testMethodDelete/<sObject>/<id>' -> [ :req | 
				'{ "response": "Deleted ' , (req at: #sObject) , ' with ID '
				, (req at: #id) , '" }' ];
		DELETE: '/testMethodDeleteWithHeaders/<sObject>/<id>' -> [ :req | 
				[ req headers at: 'LastModified' ]
					on: KeyNotFound
					do: [ req abort: '{"response": "Error: no header"}' ].
				(req headers at: 'LastModified') = 'yesterday' ifTrue: [ 
						req abort:
								'{"response": "Success: deleted object created yesterday"}' ] ];
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

{ #category : #tests }
SmallforceRequestTest >> testMethodDelete [

	| mockResponseShouldSucceed smallforceRequest responseShouldSucceed |
	smallforceRequest := self mockRequest.

	mockResponseShouldSucceed := SmallforceRequest stonMarshal:
		                             '{ "response": "Deleted Account with ID 500" }'.

	responseShouldSucceed := smallforceRequest methodDelete:
		                         '/testMethodDelete/Account/500'.

	"Valid endpoint and parameters should return successful response."
	self
		assert: (mockResponseShouldSucceed at: 'response')
		equals:
		((SmallforceRequest stonMarshal: responseShouldSucceed) at:
			 'response').

	"Invalid endpoint (no parameters) should return a 404."
	self
		assert: ([ 
			 SmallforceRequest stonMarshal:
				 (smallforceRequest methodDelete: '/testMethodDelete/') ]
				 on: STONReaderError
				 do: [ :error | error asString ])
		equals:
		'STONReaderError: At character 4: ''Cannot resolve class named #Not'''.

	"Invalid method should return a 404."
	self
		assert: ([ 
			 SmallforceRequest stonMarshal:
				 (smallforceRequest methodGet: '/testMethodDelete/') ]
				 on: STONReaderError
				 do: [ :error | error asString ])
		equals:
		'STONReaderError: At character 4: ''Cannot resolve class named #Not'''
]

{ #category : #tests }
SmallforceRequestTest >> testMethodDeleteWithHeaders [

	| smallforceRequest mockResponseSuccess headers mockResponseNoHeader smallforceRequestNoHeader |
	smallforceRequest := self mockRequest.
	smallforceRequestNoHeader := self mockRequest.

	mockResponseSuccess := SmallforceRequest stonMarshal:
		                       '{"response": "Success: deleted object created yesterday"}'.

	mockResponseNoHeader := SmallforceRequest stonMarshal:
		                        '{"response": "Error: no header"}'.

	headers := Dictionary new.
	headers add: 'LastModified' -> 'yesterday'.

	"Valid request should return success message."
	self
		assert: (SmallforceRequest stonMarshal: (smallforceRequest
					  methodDelete: '/testMethodDeleteWithHeaders/Account/500'
					  withHeaders: headers))
		equals: mockResponseSuccess.
	"Invalid request (no headers) should return no header error. Uses new SmallforceRequest to ensure no headers are sent."
	self
		assert:
			(SmallforceRequest stonMarshal: (smallforceRequestNoHeader methodDelete:
					  '/testMethodDeleteWithHeaders/Account/500'))
		equals: mockResponseNoHeader
]

{ #category : #tests }
SmallforceRequestTest >> testMethodGet [

	| smallforceRequest response mockResponse |
	smallforceRequest := self mockRequest.

	mockResponse := STONJSON fromString: '{ "message": "Hello World" }'.
	response := smallforceRequest methodGet: '/testMethodGet/'.

	"Valid request should return JSON converted to STON."
	self
		assert: (SmallforceRequest stonMarshal: response)
		equals: mockResponse.

	"Invalid method (not a GET) should return 404."
	self
		assert: ([ 
			 SmallforceRequest stonMarshal:
				 (smallforceRequest methodDelete: '/testMethodGet/') ]
				 on: STONReaderError
				 do: [ :error | error asString ])
		equals:
		'STONReaderError: At character 4: ''Cannot resolve class named #Not'''
]

{ #category : #tests }
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
	self assert: (SmallforceRequest stonMarshal: responseShouldSucceed) equals: mockResponseSuccess.
	
	"Create a new smallForceRequest to reset headers."
	smallForceRequest := self mockRequest.
	
	responseShouldFail := smallForceRequest
		methodGet: '/testMethodGetWithHeaders'.
	self assert: (SmallforceRequest stonMarshal: responseShouldFail) equals: mockResponseFailure.
	
		
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodPatch [

    | smallforceRequest response mockResponse |
    smallforceRequest := self mockRequest.

    mockResponse := STONJSON fromString: '{ "message": "Resource patched successfully" }'.
    response := smallforceRequest methodPatch: '/testMethodPatch/123' body: '{ "data": "patched example" }'.

    "Valid request should return JSON converted to STON."
    self
        assert: (SmallforceRequest stonMarshal: response)
        equals: mockResponse.

    "Invalid method (not a PATCH) should return 404."
    self
        assert: ([ 
             SmallforceRequest stonMarshal:
                 (smallforceRequest methodGet: '/testMethodPatch/123') ]
                 on: STONReaderError
                 do: [ :error | error asString ])
        equals:
        'STONReaderError: At character 4: ''Cannot resolve class named #Not'''
]

{ #category : #'as yet unclassified' }
SmallforceRequestTest >> testMethodPost [

    | smallforceRequest response mockResponse |
    smallforceRequest := self mockRequest.

    mockResponse := STONJSON fromString: '{ "message": "Resource created successfully" }'.
    response := smallforceRequest methodPost: '/testMethodPost' body: '{ "data": "example" }'.

    "Valid request should return JSON converted to STON."
    self
        assert: (SmallforceRequest stonMarshal: response)
        equals: mockResponse.

    "Invalid method (not a POST) should return 404."
    self
        assert: ([ 
             SmallforceRequest stonMarshal:
                 (smallforceRequest methodGet: '/testMethodPost/') ]
                 on: STONReaderError
                 do: [ :error | error asString ])
        equals:
        'STONReaderError: At character 4: ''Cannot resolve class named #Not'''
]

{ #category : #tests }
SmallforceRequestTest >> testMethodPut [

    | smallforceRequest response mockResponse |
    smallforceRequest := self mockRequest.

    mockResponse := STONJSON fromString: '{ "message": "Resource updated successfully" }'.
    response := smallforceRequest methodPut: '/testMethodPut/123' body: '{ "data": "updated example" }'.

    "Valid request should return JSON converted to STON."
    self
        assert: (SmallforceRequest stonMarshal: response)
        equals: mockResponse.

    "Invalid method (not a PUT) should return 404."
    self
        assert: ([ 
             SmallforceRequest stonMarshal:
                 (smallforceRequest methodGet: '/testMethodPut/123') ]
                 on: STONReaderError
                 do: [ :error | error asString ])
        equals:
        'STONReaderError: At character 4: ''Cannot resolve class named #Not'''

]

{ #category : #tests }
SmallforceRequestTest >> testStonMarshal [
			
	| smallforceRequest expected |
	smallforceRequest := self mockRequest.
	expected := Dictionary new.
	expected add: 'message' -> 'hello world'.
	
	self assert: ((SmallforceRequest stonMarshal: '{ "message": "hello world" }') at: 'message') equals: (expected at: 'message').
]
