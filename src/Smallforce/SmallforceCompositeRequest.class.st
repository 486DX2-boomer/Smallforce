"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages

- message one
- message two
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

    Instance Variables
	accessToken:		<Object>
	client:		<Object>
	org:		<Object>
	sfVersion:		<Object>


    Implementation Points
"
Class {
	#name : 'SmallforceCompositeRequest',
	#superclass : 'SmallforceRequest',
	#instVars : [
		'requestQueue',
		'allOrNone',
		'collateSubRequests',
		'referenceIdCounter',
		'referenceIdPrefix'
	],
	#category : 'Smallforce-Base',
	#package : 'Smallforce',
	#tag : 'Base'
}

{ #category : 'adding' }
SmallforceCompositeRequest >> addRequestToQueue: aRequestDict [

	(self requestQueue size >= 25) ifTrue: [ Error signal: 'Cannot add subrequest: maximum 25 allowed' ].

	requestQueue add: aRequestDict
]

{ #category : 'accessing' }
SmallforceCompositeRequest >> allOrNone [

	^ allOrNone
]

{ #category : 'accessing' }
SmallforceCompositeRequest >> allOrNone: aBoolean [

	allOrNone := aBoolean
]

{ #category : 'testing' }
SmallforceCompositeRequest >> areParamsEmpty [
	"Check to see if the instance does not have org, version, or set. If not, it needs initialization. Return true if any of these are nil."

     ^ ((org isNil) or: [ accessToken isNil ]) or: [ sfVersion isNil ]

	
]

{ #category : 'initialization' }
SmallforceCompositeRequest >> clearQueue [

	referenceIdCounter := 0.
	self requestQueue removeAll
]

{ #category : 'accessing' }
SmallforceCompositeRequest >> collateSubRequests [

	^ collateSubRequests
]

{ #category : 'accessing' }
SmallforceCompositeRequest >> collateSubRequests: aBoolean [

	collateSubRequests := aBoolean
]

{ #category : 'helpers' }
SmallforceCompositeRequest >> generateReferenceId [
	"Each subrequest must be identified with a unique ID. In normal use, each is specified by the user. In the context of a Smallforce composite request, it is more sensible to use generated reference IDs, as Smallforce composite requests are batches of discrete API calls, instead of handcrafted chains of dependent calls. Reference IDs are generated dynamically as the composite request is built."
	referenceIdCounter := referenceIdCounter + 1.
	
	^ referenceIdPrefix , referenceIdCounter asString.
	
	
	
]

{ #category : 'initialization' }
SmallforceCompositeRequest >> initialize [

	requestQueue := OrderedCollection new.
	allOrNone := false.
	collateSubRequests := false.
	referenceIdPrefix := 'subrequest_'.
	referenceIdCounter := 0.
	
]

{ #category : 'rest methods' }
SmallforceCompositeRequest >> methodGet: anEndpointString [

	| requestDict referenceId |
	
	referenceId := self generateReferenceId.
	
	requestDict := Dictionary new.
	requestDict at: 'method' put: 'GET'.
	requestDict at: 'url' put: anEndpointString.
	requestDict at: 'referenceId' put: referenceId.

	self addRequestToQueue: requestDict
]

{ #category : 'accessing' }
SmallforceCompositeRequest >> requestQueue [

	^ requestQueue
]

{ #category : 'serializing' }
SmallforceCompositeRequest >> toJSON [

	| sr |
	sr := Dictionary new.
	sr
		at: 'allOrNone' put: allOrNone;
		at: 'collateSubrequests' put: collateSubRequests;
		at: 'compositeRequest' put: requestQueue asArray.
	
	^ STONJSON toStringPretty: sr.
		
	
	
]
