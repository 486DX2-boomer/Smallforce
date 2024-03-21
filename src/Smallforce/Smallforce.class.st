"
I provide bindings to the Salesforce REST API by managing SmallforceRequests.
"
Class {
	#name : #Smallforce,
	#superclass : #Object,
	#instVars : [
		'org',
		'accessToken',
		'sfVersion'
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

{ #category : #'Salesforce-list' }
Smallforce >> describeGlobal [
	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body."

	^ self newRequest methodGet:
		  '/services/data/' , sfVersion , '/sobjects/'
]

{ #category : #'Salesforce-list' }
Smallforce >> describeGlobalIfModifiedSince: aDate [
	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body.
The date format is EEE, dd MMM yyyy HH:mm:ss z. For example: If-Unmodified-Since: Mon, 30 Nov 2020 08:34:54 MST."

	| dateHeader headers |
	dateHeader := Association key: 'If-Modified-Since: ' value: aDate.
	headers := Array with: dateHeader.

	^ self newRequest
		  methodGet: '/services/data/' , sfVersion , '/sobjects/'
		  withHeaders: headers
]

{ #category : #'Salesforce-list' }
Smallforce >> describeGlobalIfUnmodifiedSince: aDate [
	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body.
The date format is EEE, dd MMM yyyy HH:mm:ss z. For example: If-Unmodified-Since: Mon, 30 Nov 2020 08:34:54 MST."

	| dateHeader headers |
	dateHeader := Association key: 'If-Unmodified-Since: ' value: aDate.
	headers := Array with: dateHeader.

	^ self newRequest
		  methodGet: '/services/data/' , sfVersion , '/sobjects/'
		  withHeaders: headers
]

{ #category : #'Salesforce-list' }
Smallforce >> limits [
	"Lists information about limits in your org. For each limit, this resource returns the maximum allocation and the remaining allocation based on usage."

	^ self newRequest methodGet:
		  '/services/data/' , sfVersion , '/limits/'
]

{ #category : #'instance creation' }
Smallforce >> newRequest [
	"Helper method to return a fresh SmallforceRequest."
	^ SmallforceRequest newWithOrg: org accessToken: accessToken version: sfVersion.
]

{ #category : #accessing }
Smallforce >> org [

	^ org
]

{ #category : #accessing }
Smallforce >> org: anObject [

	org := anObject
]

{ #category : #'Salesforce-list' }
Smallforce >> resourcesByVersion [
	"Resources by Version
Lists available resources for the specified API version, including resource name and URI.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_discoveryresource.htm"

	^ self newRequest methodGet: '/services/data/' , sfVersion
]

{ #category : #'Salesforce-list' }
Smallforce >> resourcesByVersion: salesforceVersion [
	"Resources by Version
Lists available resources for the specified API version, including resource name and URI.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_discoveryresource.htm
Provide the Salesforce version in the form of v0.xx eg v0.60"

	^ self newRequest methodGet: '/services/data/' , salesforceVersion
]

{ #category : #accessing }
Smallforce >> sfVersion [

	^ sfVersion
]

{ #category : #accessing }
Smallforce >> sfVersion: anObject [

	sfVersion := anObject
]

{ #category : #'Salesforce-list' }
Smallforce >> versions [
	"Versions
Lists summary information about each Salesforce version currently available, including the version, label, and a link to each version's root.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_versions.htm"

	^ self newRequest methodGet: '/services/data/'
]
