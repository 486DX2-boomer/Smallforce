"
I provide bindings to the Salesforce REST API by managing SmallforceRequests.

You should create a new Smallforce like so:

`sf := Smallforce new accessToken: '00abc00def00012345'; org: 'https://adjective-animal-1abcd2-dev-ed.my.salesforce.com'; sfVersion:'v60.0'.`

Smallforce is designed to mirror Salesforce's REST API as described in the documentation here: `https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/using_resources_working_with_records.htm`

The messages are organized in appropriate protocols according to the example documentation: getting org information, working with object metadata, working with records, and so on.

The syncFromSalesforce: and syncToSalesforce: messages provide a highly intuitive way to update records between your local SObjects and the remote data in Salesforce.

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

{ #category : #'Salesforce-manage passwords' }
Smallforce >> changePasswordForUser: anSObject to: aString [

	"Use the sObject User Password resource to set, reset, or get information about a user password."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_user_password.htm"

	"Pass a User prefab with a valid record ID and the desired password."

	| body passwordJSON |
	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

	passwordJSON := Dictionary new.
	passwordJSON at: 'NewPassword' put: aString.
	body := STONJSON toString: passwordJSON.

	response := self newRequest
		            methodPostJSON:
			            '/services/data/' , version , '/sobjects/'
			            , anSObject apiName , '/' , anSObject recordId , '/'
			            , 'password'
		            body: body
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
	recordId := response at: 'id'.
	anSObject recordId: recordId.
	^ response
]

{ #category : #'helper methods' }
Smallforce >> createSearchStringFromArray: anArray [

	"Construct a search string from an array containing SObjects, strings, or both."

	"Example: 
	myAccount := Account new.
	myContact := Contact new.
	self searchStringFromArray: { myAccount. myContact. 'Lead' }"

	| searchString |
	searchString := String new.

	anArray withIndexDo: [ :e :index | 
		(e isKindOf: SObject)
			ifTrue: [ searchString := searchString , e apiName ]
			ifFalse: [ searchString := searchString , e ].
		index < anArray size ifTrue: [ searchString := searchString , ',' ] ].
	^ searchString
]

{ #category : #'Salesforce-delete Lightning Experience events' }
Smallforce >> deleteMultipleEvents: anEvent [

	"Use the HTTP DELETE method to remove one or more IsRecurrence2 events in a series. You can remove a single event, all events following and including a specific event, or an entire event series."

	"Delete Multiple Events or All Events from a Series
To delete all events in a series from a specific occurrence and onwards, specify the event ID and use the DELETE method of the resource to delete a record. When calling this method, IsRecurrence2 must be true and IsRecurrence2Exclusion must be false.

To delete an entire event series, specify the event ID of the first occurrence in the series and use the DELETE method of the resource to delete a record."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_event_series_delete.htm"

	anEvent noId ifTrue: [ NoIdOnRecordException raise ].

	response := self newRequest methodDelete:
		            '/services/data/' , version , '/sobjects/'
		            , anEvent apiName , '/' , anEvent recordId , '/'
		            , 'fromThisEventOnwards'
]

{ #category : #'Salesforce-working with records' }
Smallforce >> deleteRecord: anSObject [

	"Use the sObject Rows resource to delete records. Specify the record ID and use the DELETE method of the resource to delete a record.

https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_delete_record.htm"

	"Provide an SObject with a correct record ID assigned to it. To choose which fields to update, provide the withFields argument as an array of the field names (as strings)."

	"This operation does not return a response on success. This is expected."

	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

	response := self newRequest methodDelete:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId.
	^ response
]

{ #category : #'Salesforce-delete Lightning Experience events' }
Smallforce >> deleteSingleEvent: anEvent [

	"Use the HTTP DELETE method to remove one or more IsRecurrence2 events in a series. You can remove a single event, all events following and including a specific event, or an entire event series."

	"Delete a Single Event in a Series
Use the sObject Rows resource to delete event records. To delete a single occurrence in a series, specify the event ID and use the DELETE method of the resource to delete a record."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_event_series_delete.htm"

	anEvent noId ifTrue: [ NoIdOnRecordException raise ].

	response := self newRequest methodDelete:
		            '/services/data/' , version , '/sobjects/'
		            , anEvent apiName , '/' , anEvent recordId
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

{ #category : #'Salesforce-searches and queries' }
Smallforce >> executeQuery: aString [

	"Use the Query resource to execute a SOQL query that returns all the results in a single response, or if needed, returns part of the results and a locator used to retrieve the remaining results."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_query.htm"

	"This message accepts a normal string and submits it as an SOQL query. This is a convenience method for testing or for very simple SOQL queries."

	"An SOQLQuery class to build complex queries was planned, but I wasn't smart enough to write it. If you want to write it for me, please do so. In the meantime, I recommend https://lwc-soql-builder.github.io/"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/query/' , '?q='
		            , aString urlEncoded.

	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> executeQueryWithDeleted: aString [

	"This is the same as executeQuery, but uses queryAll to include deleted records."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_queryall.htm"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/queryAll/' , '?q='
		            , aString urlEncoded.

	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> getDefaultSearchScopeAndOrder [

	"Use the Search Scope and Order resource to retrieve the default global search scope and order for the logged-in user, including any pinned objects in the user’s search results page."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_retrieve_search_scope_order.htm"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/search/' , 'scopeOrder'.
	^ response
]

{ #category : #'Salesforce-updated and deleted records' }
Smallforce >> getDeletedRecordsOn: anSObject from: startDateAndTime to: endDateAndTime [

	"Use the sObject Get Deleted resource to get a list of deleted records for the specified object. Specify the date and time range within which the records for the given object were deleted. Deleted records are written to a delete log (that is periodically purged), and will be filtered out of most operations, such as sObject Rows or Query (although QueryAll will include deleted records in results)."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_deleted.htm"

	"Supply startDateAndTime and endDateAndTime as DateAndTime objects."

	"Example: get list of Accounts deleted in the last hour: 
	sf getDeletedRecordsOn: (Account new) from: (DateAndTime now - 3600) to: (DateAnDTime now)."

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/deleted/' , '?start='
		            , startDateAndTime asString urlEncoded , '&end='
		            , endDateAndTime asString urlEncoded.

	^ response
]

{ #category : #'Salesforce-working with records' }
Smallforce >> getFieldValues: anSObject [

	"You use the GET method of the sObject Rows resource to retrieve field values from a record.
You can specify the fields you want to retrieve with the optional fields parameter. If you specify fields that don’t exist or are inaccessible to you by field-level security, a 400 error response is returned.

If you don’t use the fields parameter, the request retrieves all standard and custom fields from the record. These retrieved fields are the same as the fields returned by an sObject Describe request for the object. Fields that are inaccessible to you by field-level security are not returned in the response body."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_field_values.htm"

	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

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
	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

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

{ #category : #'Salesforce-manage passwords' }
Smallforce >> getPasswordExpirationStatusForUser: anSObject [

	"Use the sObject User Password resource to set, reset, or get information about a user password."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_user_password.htm"

	"Create a User prefab with a valid record ID and pass it as the argument."

	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId , '/'
		            , 'password'.
	^ response
]

{ #category : #'Salesforce-traversing related' }
Smallforce >> getRelated: anSObject relationship: relationshipName [

	"Traverse the relationship to retrieve the related record. This API is confusing: for custom objects you pass the relationship name with an __r suffix, not a __c suffix. For parent-to-child relationships, you also have to use the Plural Label. For standard objects you don't use the __r suffix.
	
	Child-to-parent example: on a custom object Officer that has a lookup field to Department, it would look like this:
	getRelated: myOfficer relationship: 'Department__r'
	Standard object relationships don't use the __r suffix, and look like this:
	getRelated: myContact relationship: 'Account'
	
	Parent-to-child example: on a custom object Department that same relationship is traversed like this:
	getRelated: myDepartment relationship: 'Officers__r'
	Standard object relationships don't use the __r suffix but still use the Plural Label, and look like this:
	getRelated: myCase relationship: 'Tasks'
		
	The API example is here: https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_relationship_traversal.htm
	
	And I recommend reading the explanation of relationship names here: https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_relationships_and_custom_objects.htm
	
	It might be helpful to add an instance variable to your SObject containing the relationship name if you are going to perform this operation a lot."

	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId , '/'
		            , relationshipName.
	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> getSearchResultLayoutForObject: anSObject [

	"Use the Search Result Layouts resource to retrieve the search result layout configuration for each object specified in the query string."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_retrieve_search_layouts.htm"

	"You can pass an SObject to look up its search result layout. To search multiple objects, use getSearchResultLayoutForObjects."

	"Example: sf getSearchResultLayoutForObject: (Account new)"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/' , 'search' , '/'
		            , 'layout' , '/' , '?q=' , anSObject apiName.
	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> getSearchResultLayoutForObjectFromAPIName: aString [

	"Use the Search Result Layouts resource to retrieve the search result layout configuration for each object specified in the query string."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_retrieve_search_layouts.htm"

	"Instead of passing an SObject, you can supply an API name as a string."

	"Example: sf getSearchResultLayoutForObject: 'Account'"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/' , 'search' , '/'
		            , 'layout' , '/' , '?q=' , aString.
	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> getSearchResultLayoutForObjectsFromArray: anArray [

	"Use the Search Result Layouts resource to retrieve the search result layout configuration for each object specified in the query string."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_retrieve_search_layouts.htm"

	"You can pass an array of SObjects, an array of api name strings, or a mix of both."

	"sf getSearchResultLayoutForObjectsFromArray: { myAccount. myContact. 'Officer__c' }."

	| searchString |
	searchString := String new.
	searchString := self createSearchStringFromArray: anArray.

	response := self newRequest methodGet:
		            '/services/data/' , version , '/' , 'search' , '/'
		            , 'layout' , '/' , '?q=' , searchString.
	^ response
]

{ #category : #'Salesforce-updated and deleted records' }
Smallforce >> getUpdatedRecordsOn: anSObject from: startDateAndTime to: endDateAndTime [

	"Use the sObject Get Updated resource to get a list of updated (modified or added) records for the specified object. Specify the date and time range within which the records for the given object were updated."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_updated.htm"

	"Supply startDateAndTime and endDateAndTime as DateAndTime objects."

	"Example: get list of Accounts updated in the last hour: 
	sf getUpdatedRecordsOn: (Account new) from: (DateAndTime now - 3600) to: (DateAndTime now)."

	response := self newRequest methodGet:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/updated/' , '?start='
		            , startDateAndTime asString urlEncoded , '&end='
		            , endDateAndTime asString urlEncoded.

	^ response
]

{ #category : #accessing }
Smallforce >> lastResponse [

	"Access the response from the most recent request."

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

{ #category : #'Salesforce-manage passwords' }
Smallforce >> resetPasswordForUser: anSObject [

	"Use the sObject User Password resource to set, reset, or get information about a user password."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_user_password.htm"

	"Create a User prefab with a valid record ID and pass it as the argument."

	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

	response := self newRequest methodDelete:
		            '/services/data/' , version , '/sobjects/'
		            , anSObject apiName , '/' , anSObject recordId , '/'
		            , 'password'.
	^ response
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

{ #category : #'Salesforce-searches and queries' }
Smallforce >> searchString: aString [

	"Use the Search resource to execute a SOSL search ..."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_search.htm"

	| searchString |
	searchString := String new.
	"String search term must be wrapped in {braces} and URL encoded"
	searchString := '{' , aString , '}'.
	searchString := searchString urlEncoded.

	response := self newRequest methodGet:
		            '/services/data/' , version , '/search/' , '?q=FIND+'
		            , searchString.

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
	
	"WARNING: Nil fields WILL be written to Salesforce records! Be careful when syncing on your record and make sure you do not have any unintended nil fields before you attempt to sync."

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
	anSObject noId ifTrue: [ NoIdOnRecordException raise ].

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

{ #category : #'Salesforce-recently viewed' }
Smallforce >> viewRecentlyViewed [

	"Use the Recently Viewed Items resource to get a list of recently viewed records."
	
	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_see_recently_viewed.htm"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/recent'.

	^ response
]

{ #category : #'Salesforce-recently viewed' }
Smallforce >> viewRecentlyViewedLimit: aNumber [

	"Use the Recently Viewed Items resource to get a list of recently viewed records."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_see_recently_viewed.htm"

	"Pass a number to limit the number of records returned."

	response := self newRequest methodGet:
		            '/services/data/' , version , '/' , 'recent' , '/'
		            , '?limit=' , aNumber asString.

	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> viewRelevantItems [

	"Use the Relevant Items resource to get a list of relevant records."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_relevant_items.htm"

	response := self newRequest methodGet:
		            '/services/data/' , version , '/' , 'sobjects' , '/'
		            , 'relevantItems'.
	^ response
]

{ #category : #'Salesforce-searches and queries' }
Smallforce >> viewRelevantItemsFilterByObjects: anArray [

	"Use the Relevant Items resource to get a list of relevant records."

	"https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_get_relevant_items.htm"

	"Pass an array of SObjects, API names as strings, or both, to filter the results by those objects."

	"Example: sf viewRelevantItemsFilterByObjects: { myAccount. myContact. 'Officer__c' }."

	| searchString |
	searchString := self createSearchStringFromArray: anArray.
	response := self newRequest methodGet:
		            '/services/data/' , version , '/' , 'sobjects' , '/'
		            , 'relevantItems' , '?sobjects=' , searchString.
	^ response
]
