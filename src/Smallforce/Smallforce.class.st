"
I provide bindings to the Salesforce REST API by managing SmallforceRequests.

You should create a new Smallforce like so:

`sf := Smallforce new accessToken: '00abc00def00012345'; org: 'https://adjective-animal-1abcd2-dev-ed.my.salesforce.com'; sfVersion:'v60.0'.`

Smallforce is designed to mirror Salesforce's REST API as described in the documentation here: `https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/using_resources_working_with_records.htm`

The messages are organized in appropriate protocols according to the example documentation: getting org information, working with object metadata, working with records, and so on.
"
Class {
	#name : #Smallforce,
	#superclass : #Object,
	#instVars : [
		'org',
		'accessToken',
		'version'
	],
	#category : #'Smallforce-Base'
}

{ #category : #accessing }
Smallforce >> accessToken [

	^ accessToken
]

{ #category : #accessing }
Smallforce >> accessToken: anObject [

	accessToken := anObject
]

{ #category : #'Salesforce-org info' }
Smallforce >> describeGlobal [
	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body."

	^ self newRequest methodGet:
		  '/services/data/' , version , '/sobjects/'
]

{ #category : #'Salesforce-org info' }
Smallforce >> describeGlobalIfModifiedSince: aDate [
	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body.
The date format is EEE, dd MMM yyyy HH:mm:ss z. For example: If-Unmodified-Since: Mon, 30 Nov 2020 08:34:54 MST."

	| dateHeader headers |
	dateHeader := Association key: 'If-Modified-Since: ' value: aDate.
	headers := Array with: dateHeader.

	^ self newRequest
		  methodGet: '/services/data/' , version , '/sobjects/'
		  withHeaders: headers
]

{ #category : #'Salesforce-org info' }
Smallforce >> describeGlobalIfUnmodifiedSince: aDate [
	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body.
The date format is EEE, dd MMM yyyy HH:mm:ss z. For example: If-Unmodified-Since: Mon, 30 Nov 2020 08:34:54 MST."

	| dateHeader headers |
	dateHeader := Association key: 'If-Unmodified-Since: ' value: aDate.
	headers := Array with: dateHeader.

	^ self newRequest
		  methodGet: '/services/data/' , version , '/sobjects/'
		  withHeaders: headers
]

{ #category : #'Salesforce-object metadata' }
Smallforce >> describeObject: anSObject [

	"Use the sObject Describe resource to retrieve all the metadata for an object, including information about each field, URLs, and child relationships.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_describe.htm"

	^ self newRequest methodGet:
		  '/services/data/' , version , '/sobjects/' , anSObject apiName
		  , '/describe/'
]

{ #category : #'Salesforce-object metadata' }
Smallforce >> getObjectChanges: anSObject since: aDateString [

	"Use the sObject Describe resource and the If-Modified-Since HTTP header to determine if object metadata has changed.
You can include the If-Modified-Since header with a date in EEE, dd MMM yyyy HH:mm:ss z format when you use the sObject Describe resource. If you do, response metadata will only be returned if the object metadata has changed since the provided date. If the metadata has not been modified since the provided date, a 304 Not Modified status code is returned, with no response body.

https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/sobject_describe_with_ifmodified_header.htm

Example date string: Wed, 3 Jul 2013 19:43:31 GMT"

	| headers |
	headers := Dictionary new.
	headers add: 'If-Modified-Since' -> aDateString.

	^ self newRequest
		  methodGet:
		  '/services/data/' , version , '/sobjects/' , anSObject apiName
		  withHeaders: headers
]

{ #category : #'Salesforce-object metadata' }
Smallforce >> getObjectMetadata: anSObject [

	"Use the sObject Basic Information resource to get metadata for an object.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_basic_info.htm"

	^ self newRequest methodGet:
		  '/services/data/' , version , '/sobjects/', anSObject apiName.
]

{ #category : #'Salesforce-org info' }
Smallforce >> limits [
	"Lists information about limits in your org. For each limit, this resource returns the maximum allocation and the remaining allocation based on usage."

	^ self newRequest methodGet:
		  '/services/data/' , version , '/limits/'
]

{ #category : #'instance creation' }
Smallforce >> newRequest [
	"Helper method to return a fresh SmallforceRequest."
	^ SmallforceRequest newWithOrg: org accessToken: accessToken version: version.
]

{ #category : #accessing }
Smallforce >> org [

	^ org
]

{ #category : #accessing }
Smallforce >> org: anObject [

	org := anObject
]

{ #category : #'Salesforce-org info' }
Smallforce >> resourcesByVersion [
	"Resources by Version
Lists available resources for the specified API version, including resource name and URI.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_discoveryresource.htm"

	^ self newRequest methodGet: '/services/data/' , version
]

{ #category : #'Salesforce-org info' }
Smallforce >> resourcesByVersion: salesforceVersion [
	"Resources by Version
Lists available resources for the specified API version, including resource name and URI.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_discoveryresource.htm
Provide the Salesforce version in the form of v0.xx eg v0.60"

	^ self newRequest methodGet: '/services/data/' , salesforceVersion
]

{ #category : #accessing }
Smallforce >> version [

	^ version
]

{ #category : #accessing }
Smallforce >> version: anSfVersionString [

    "Check if the provided sfVersion matches the required format"
    (anSfVersionString matchesRegex: 'v\d*.\d') ifFalse: [
        "Raise an exception for invalid sfVersion format"
        InvalidVersionException raise.
    ].

    "Set the sfVersion if it passes the validation"
    version := anSfVersionString.
]

{ #category : #'Salesforce-org info' }
Smallforce >> versions [
	"Versions
Lists summary information about each Salesforce version currently available, including the version, label, and a link to each version's root.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_versions.htm"

	^ self newRequest methodGet: '/services/data/'
]
