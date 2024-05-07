"
I represent an Pricebook2 object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunity.htm
"
Class {
	#name : #Pricebook2,
	#superclass : #SObject,
	#instVars : [
		'Description',
		'IsActive',
		'IsArchived',
		'IsDeleted',
		'IsStandard',
		'LastReferencedDate',
		'LastViewedDate',
		'Name',
		'ValidFrom',
		'ValidTo'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Pricebook2 >> Description [

	^ Description
]

{ #category : #accessing }
Pricebook2 >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Pricebook2 >> IsActive [

	^ IsActive
]

{ #category : #accessing }
Pricebook2 >> IsActive: anObject [

	IsActive := anObject
]

{ #category : #accessing }
Pricebook2 >> IsArchived [

	^ IsArchived
]

{ #category : #accessing }
Pricebook2 >> IsArchived: anObject [

	IsArchived := anObject
]

{ #category : #accessing }
Pricebook2 >> IsDeleted [

	^ IsDeleted
]

{ #category : #accessing }
Pricebook2 >> IsDeleted: anObject [

	IsDeleted := anObject
]

{ #category : #accessing }
Pricebook2 >> IsStandard [

	^ IsStandard
]

{ #category : #accessing }
Pricebook2 >> IsStandard: anObject [

	IsStandard := anObject
]

{ #category : #accessing }
Pricebook2 >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Pricebook2 >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Pricebook2 >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Pricebook2 >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Pricebook2 >> Name [

	^ Name
]

{ #category : #accessing }
Pricebook2 >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
Pricebook2 >> ValidFrom [

	^ ValidFrom
]

{ #category : #accessing }
Pricebook2 >> ValidFrom: anObject [

	ValidFrom := anObject
]

{ #category : #accessing }
Pricebook2 >> ValidTo [

	^ ValidTo
]

{ #category : #accessing }
Pricebook2 >> ValidTo: anObject [

	ValidTo := anObject
]

{ #category : #initialization }
Pricebook2 >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Pricebook2'.
	self excludedFields:
		#( 'IsArchived' 'IsDeleted' 'IsStandard' 'LastReferencedDate'
		   'LastViewedDate' 'ValidFrom' 'ValidTo' )
]
