"
I am a ZnClient wrapper that sends requests to the Salesforce REST API. I contain the Salesforce org's URL and an auth token.

First instantiate me with a newWithOrg. It will look something like this:

sm := SmallforceRequest newWithOrg: 'https://your-org-a12b3c-dev-ed.my.salesforce.com' accessToken: '00Ab12C3d4'.

I am usually not instantiated directly, because you typically want to start with a fresh client for each request. I am usually instantiated and messaged from a Smallforce object.

sfVersion is usually provided by a Smallforce object; SmallforceRequest contains it only in the unusual circumstance a request is being initialized directly instead of from a Smallforce object.
"
Class {
	#name : #SmallforceRequest,
	#superclass : #Object,
	#instVars : [
		'org',
		'accessToken',
		'sfVersion',
		'client'
	],
	#category : #'Smallforce-Base'
}

{ #category : #initialization }
SmallforceRequest class >> newWithOrg: anOrg accessToken: aToken [
	"For anOrg, provide the full instance url. It should look like this: https://brave-bear-8yshw2-dev-ed.my.salesforce.com"

	| aSmallforceRequest client |
	client := ZnClient new.
	aSmallforceRequest := SmallforceRequest new.
	aSmallforceRequest client: client.
	aSmallforceRequest org: anOrg.
	aSmallforceRequest accessToken: aToken.
	aSmallforceRequest version: 'v60.0'.
	^ aSmallforceRequest.
	
]

{ #category : #initialization }
SmallforceRequest class >> newWithOrg: anOrg accessToken: aToken version: aSalesforceVersion [
	"For anOrg, provide the full instance url. It should look like this: https://brave-bear-8yshw2-dev-ed.my.salesforce.com. The version information should look like this: v60.0"

	| aSmallforceRequest client |
	client := ZnClient new.
	aSmallforceRequest := SmallforceRequest new.
	aSmallforceRequest client: client.
	aSmallforceRequest org: anOrg.
	aSmallforceRequest accessToken: aToken.
	aSmallforceRequest version: aSalesforceVersion.
	^ aSmallforceRequest.
	
]

{ #category : #converting }
SmallforceRequest class >> stonMarshal: aJSONByteString [

	"Convert a JSON response from a SmallforceRequest to STON."

	^ STONJSON fromString: aJSONByteString
]

{ #category : #accessing }
SmallforceRequest >> accessToken [

	^ accessToken
]

{ #category : #accessing }
SmallforceRequest >> accessToken: anObject [

	accessToken := anObject
]

{ #category : #accessing }
SmallforceRequest >> client [

	^ client
]

{ #category : #accessing }
SmallforceRequest >> client: anObject [

	client := anObject
]

{ #category : #'rest methods' }
SmallforceRequest >> methodDelete: anEndpointString [

	| uri response |
	uri := org , anEndpointString.

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            delete: uri.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodDelete: anEndpointString withHeaders: aHeaderDict [

	| uri response |
	uri := org , anEndpointString.

	aHeaderDict keysAndValuesDo: [ :header :headerArgument | 
		client headerAt: header add: headerArgument ].

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            delete: uri.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodGet: anEndpointString [

	| uri response |
	uri := org , anEndpointString.

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            get: uri.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodGet: anEndpointString withHeaders: aHeaderDict [

	| uri response |
	uri := org , anEndpointString.

	aHeaderDict keysAndValuesDo: [ :header :headerArgument | 
		client headerAt: header add: headerArgument ].

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            get: uri.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodPatch: anEndpointString body: aBodyString [

	| uri response |
	uri := org , anEndpointString.

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            patch: uri contents: aBodyString.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodPost: anEndpointString body: aBodyString [

	| uri response |
	uri := org , anEndpointString.

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            post: uri contents: aBodyString.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodPostJSON: anEndpointString body: aBodyJSON [

	"The JSON body should be supplied by the caller after having serialized an SObject using its own toJSON message. "

	| uri response reqBody |
	uri := org , anEndpointString.
	"ZnClient will not accept manually setting the Content-Type header to application/json. It must be passed a JSON ZnEntity."
	reqBody := ZnEntity json: aBodyJSON.

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            entity: reqBody;
		            url: uri;
		            post.
	self validateAuthentication: response.
	^ response
]

{ #category : #'rest methods' }
SmallforceRequest >> methodPut: anEndpointString body: aBodyString [

	| uri response |
	uri := org , anEndpointString.

	response := client
		            beOneShot;
		            headerAt: 'Authorization' add: 'Bearer ' , accessToken;
		            put: uri contents: aBodyString.
	self validateAuthentication: response.
	^ response
]

{ #category : #accessing }
SmallforceRequest >> org [

	^ org
]

{ #category : #accessing }
SmallforceRequest >> org: anObject [

	org := anObject
]

{ #category : #validation }
SmallforceRequest >> validateAuthentication: aResponseBody [
	"Raise an exception if the Salesforce org authentication is invalid."
			
	aResponseBody = '[{"message":"Session expired or invalid","errorCode":"INVALID_SESSION_ID"}]' ifTrue: [ AuthenticationFailedException new signal: 'Authentication failed: check your access token']
]

{ #category : #accessing }
SmallforceRequest >> version [

	^ sfVersion
]

{ #category : #accessing }
SmallforceRequest >> version: anObject [

	sfVersion := anObject
]
