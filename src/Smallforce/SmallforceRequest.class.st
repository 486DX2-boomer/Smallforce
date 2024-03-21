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

	^ self shouldBeImplemented 
]

{ #category : #'rest methods' }
SmallforceRequest >> methodGet: anEndpointString [
	"I return STON. For the raw response, use methodGetRaw."

	| uri |
	uri := org , anEndpointString.

	^ STONJSON fromString: (client
			   beOneShot;
			   headerAt: 'Authorization' add: 'Bearer ' , accessToken;
			   get: uri)
]

{ #category : #'rest methods' }
SmallforceRequest >> methodGet: anEndpointString withHeaders: aHeaderArray [
	"I return STON. For the raw return, use methodGetRaw.
To use additional headers, add additional headers as an array of Association key:value pairs."

	| uri |
	uri := org , anEndpointString.

	aHeaderArray do: [ :h |
		client headerAt: (h key) add: (h value) ].

	^ STONJSON fromString: (client
			   beOneShot;
			   headerAt: 'Authorization' add: 'Bearer ' , accessToken;
			   get: uri)
]

{ #category : #'rest methods' }
SmallforceRequest >> methodGetRaw: anEndpointString [
"I return the request as a raw ByteString. For STON, use methodGet."
	| uri |
	uri := org , anEndpointString.

	 ^ client
		beOneShot;
		  headerAt: 'Authorization' add:'Bearer ', accessToken;
		  get: uri
]

{ #category : #'rest methods' }
SmallforceRequest >> methodPatch: anEndpointString [

	^ self shouldBeImplemented 
]

{ #category : #'rest methods' }
SmallforceRequest >> methodPost: anEndpointString [

	^ self shouldBeImplemented 
]

{ #category : #accessing }
SmallforceRequest >> org [

	^ org
]

{ #category : #accessing }
SmallforceRequest >> org: anObject [

	org := anObject
]

{ #category : #accessing }
SmallforceRequest >> version [

	^ sfVersion
]

{ #category : #accessing }
SmallforceRequest >> version: anObject [

	sfVersion := anObject
]
