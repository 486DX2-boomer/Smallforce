"
I provide bindings to the Salesforce REST API by managing SmallforceRequests.

You should create a new Smallforce like so:

`sf := Smallforce new accessToken: '00abc00def00012345'; org: 'https://adjective-animal-1abcd2-dev-ed.my.salesforce.com'; sfVersion:'v60.0'.`

Smallforce is designed to mirror Salesforce's REST API as described in the documentation here: `https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/using_resources_working_with_records.htm`

The messages are organized in appropriate protocols according to the example documentation: getting org information, working with object metadata, working with records, and so on.

While the intended way to work with a Smallforce instance is to initialize it and pass SObjects to its messages, a Smallforce instance can also represent a ""connection"" to your Salesforce org. For example, you can add your custom business logic to your subclasses of SObject, and add a Smallforce as a ""connection"" instance variable to make it easier to perform record operations on your custom object.
"
Class {
	#name : #Smallforce,
	#superclass : #Object,
	#instVars : [
		'org',
		'accessToken',
		'version',
		'response'
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

{ #category : #'Salesforce-working with records' }
Smallforce >> createRecord: anSObject [

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_create.htm"

	"Use the sObject Basic Information resource to create new records. You supply the required field values in the request data, and send the request using the POST HTTP method. The response body contains the ID of the new record if the call is successful."

	"Pass an SObject as an argument. Its fields will be serialized to JSON and a corresponding record will be created in your org."

	| body |
	body := anSObject toJSON.

	response := self newRequest
		            methodPostJSON:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/'
		            body: body.
	^ response
]

{ #category : #'Salesforce-working with records' }
Smallforce >> createRecordAndAssignId: anSObject [

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_create.htm"

	"Use the sObject Basic Information resource to create new records. You supply the required field values in the request data, and send the request using the POST HTTP method. The response body contains the ID of the new record if the call is successful."

	"Pass an SObject as an argument. Its fields will be serialized to JSON and a corresponding record will be created in your org. The returned record ID of the created record will be assigned to the SObject."

	| body recordId |
	body := anSObject toJSON.

	response := self newRequest
		            methodPostJSON:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/'
		            body: body.
	recordId := (STONJSON fromString: response) at: 'id'.
	anSObject recordId: recordId.
	^ response
]

{ #category : #'Salesforce-working with records' }
Smallforce >> deleteRecord: anSObject [

	"Use the sObject Rows resource to delete records. Specify the record ID and use the DELETE method of the resource to delete a record.

https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_delete_record.htm"

	"Provide an SObject with a correct record ID assigned to it. To choose which fields to update, provide the withFields argument as an array of the field names (as strings)."

	"This operation does not return a response on success. This is expected."

	anSObject noId ifTrue: [ 
		NoIdOnRecordException new signal: 'No ID set on record.' ].

	response := self newRequest methodDelete:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId.
	^ response
]

{ #category : #'Salesforce-org info' }
Smallforce >> describeGlobal [

	"Lists the available objects and the associated metadata.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_describeGlobal.htm
You can use the If-Modified-Since or If-Unmodified-Since header with this resource. When using the If-Modified-Since header, if no available object’s metadata has changed since the provided date, a 304 Not Modified status code is returned with no response body."

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'.

	^ response
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

	response := self newRequest
		            methodGet: '/services/data/' , version , '/sobjects/'
		            withHeaders: headers.

	^ response
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

	response := self newRequest
		            methodGet: '/services/data/' , version , '/sobjects/'
		            withHeaders: headers.

	^ response
]

{ #category : #'Salesforce-object metadata' }
Smallforce >> describeObject: anSObject [

	"Use the sObject Describe resource to retrieve all the metadata for an object, including information about each field, URLs, and child relationships.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_describe.htm"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/describe/'.
	^ response
]

{ #category : #'Salesforce-working with records' }
Smallforce >> getFieldValues: anSObject [

	"You use the GET method of the sObject Rows resource to retrieve field values from a record.
You can specify the fields you want to retrieve with the optional fields parameter. If you specify fields that don’t exist or are inaccessible to you by field-level security, a 400 error response is returned.

If you don’t use the fields parameter, the request retrieves all standard and custom fields from the record. These retrieved fields are the same as the fields returned by an sObject Describe request for the object. Fields that are inaccessible to you by field-level security are not returned in the response body."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_field_values.htm"

	anSObject noId ifTrue: [ 
		NoIdOnRecordException new signal: 'No ID set on record.' ].

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId.
	^ response
]

{ #category : #'Salesforce-working with records' }
Smallforce >> getFieldValues: anSObject fields: fieldsToRetrieveArray [

	"You use the GET method of the sObject Rows resource to retrieve field values from a record.
You can specify the fields you want to retrieve with the optional fields parameter. If you specify fields that don’t exist or are inaccessible to you by field-level security, a 400 error response is returned.

If you don’t use the fields parameter, the request retrieves all standard and custom fields from the record. These retrieved fields are the same as the fields returned by an sObject Describe request for the object. Fields that are inaccessible to you by field-level security are not returned in the response body."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_field_values.htm"

	"The fields to retrieve should be provided as an array of strings."

	| fields |
	anSObject noId ifTrue: [ 
		NoIdOnRecordException new signal: 'No ID set on record.' ].

	fields := String streamContents: [ :stream | 
		          fieldsToRetrieveArray withIndexDo: [ :field :index | 
			          stream << field.
			          index < fieldsToRetrieveArray size ifTrue: [ "comma separator if not last element" 
				          stream << ',' ] ] ].

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId , '?fields=', fields.
	^ response
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

	response := self newRequest
		            methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName
		            withHeaders: headers.
	^ response
]

{ #category : #'Salesforce-object metadata' }
Smallforce >> getObjectMetadata: anSObject [

	"Use the sObject Basic Information resource to get metadata for an object.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_basic_info.htm"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName.
	^ response
]

{ #category : #'Salesforce-org info' }
Smallforce >> limits [

	"Lists information about limits in your org. For each limit, this resource returns the maximum allocation and the remaining allocation based on usage."

	response := self newRequest methodGet:
		            '/services/data/' , version , '/limits/'.

	^ response
]

{ #category : #'instance creation' }
Smallforce >> newRequest [
	"Helper method to generate a fresh SmallforceRequest."
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

	response := self newRequest methodGet: '/services/data/' , version.

	^ response
]

{ #category : #'Salesforce-org info' }
Smallforce >> resourcesByVersion: salesforceVersion [

	"Resources by Version
Lists available resources for the specified API version, including resource name and URI.
https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_discoveryresource.htm
Provide the Salesforce version in the form of v0.xx eg v0.60"

	response := self newRequest methodGet:
		            '/services/data/' , salesforceVersion.

	^ response
]

{ #category : #'synchronize records' }
Smallforce >> syncFromSalesforce: anSObject [

	"Provide an SObject with a valid record ID to update all fields on the SObject with the corresponding data from Salesforce."

	"Fields with capital letters are assumed to correspond to Salesforce object fields. Lowercase fields are skipped"

	| fieldsToUpdate |
	response := self getFieldValues: anSObject.

	fieldsToUpdate := (anSObject class instanceVariables select: [ :field | 
		                   field name first isUppercase ]) collect: #name.

	response keysDo: [ :key | 
		| fieldName fieldValue |
		"Check for matching keys"
		fieldName := fieldsToUpdate
			             detect: [ :field | field = key asString ]
			             ifNone: [ nil ].

		"update the corresponding field on anSObject"
		fieldName ifNotNil: [ 
			fieldValue := response at: key.
			anSObject perform: (fieldName , ':') asSymbol with: fieldValue ] ]
]

{ #category : #'synchronize records' }
Smallforce >> syncToSalesforce: anSObject [

	"Provide an SObject with a valid record ID to update all fields on the record in Salesforce with the corresponding data from the SObject."

	"Fields with capital letters are assumed to correspond to Salesforce object fields. Lowercase fields are skipped"

	| fieldsToUpdate filteredFields |
	fieldsToUpdate := (anSObject class instanceVariables select: [ :field | 
		                   field name first isUppercase ]) collect: #name.

	"Don't attempt to write read-only fields"
	filteredFields := fieldsToUpdate reject: [ :fieldName | 
		                  anSObject excludedFields includes: fieldName ].

	^ self updateRecord: anSObject withFields: filteredFields
]

{ #category : #'Salesforce-working with records' }
Smallforce >> updateRecord: anSObject withFields: fieldsToUpdateArray [

	"You use the sObject Rows resource to update records. Provide the updated record information in your request data and use the PATCH method of the resource with a specific record ID to update that record. Records in a single file must be of the same object type."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_update_fields.htm"

	"Provide an SObject with a correct record ID assigned to it. To choose which fields to update, provide the withFields argument as an array of the field names (as strings)."

	"This operation does not return a response on success. This is expected."

	| fields body |
	anSObject noId ifTrue: [ 
		NoIdOnRecordException new signal: 'No ID set on record.' ].

	fields := Dictionary new.

	fieldsToUpdateArray do: [ :field | 
		fields at: field put: (anSObject perform: field asSymbol) ].

	body := STONJSON toString: fields.

	response := self newRequest
		            methodPatchJSON:
			            '/services/data/' , version , '/sobjects/'
			            , anSObject apiName , '/' , anSObject recordId
		            body: body.
	^ response
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

	response := self newRequest methodGet: '/services/data/'.

	^ response
]
