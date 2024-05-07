"
I represent an PricebookEntry object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_pricebookentry.htm

""When creating these records, you must specify the IDs of the associated Pricebook2 record and Product2 record. Once these records are created, your client application can’t update these IDs.""

Usage example:
`newEntry := PricebookEntry new.
""Set Pricebook id, product id, price before creating the record.""
newEntry Pricebook2Id: '01saj000003NkR7AAK'. 
newEntry Product2Id: '01taj0000046i45AAA'.
newEntry UnitPrice: '99999'.
sf createRecordAndAssignId: newEntry. -> 'success'

newEntry Pricebook2Id: 'ThisWillFail'.
sf updateRecord: newEntry withFields: #('Pricebook2Id'). -> 'INVALID_FIELD_FOR_INSERT_UPDATE'`
"
Class {
	#name : #PricebookEntry,
	#superclass : #SObject,
	#instVars : [
		'ActivePriceAdjustmentQuantity',
		'CurrencyIsoCode',
		'IsActive',
		'IsArchived',
		'Name',
		'Pricebook2Id',
		'Product2Id',
		'ProductCode',
		'ProductSellingModelId',
		'UnitPrice',
		'UseStandardPrice'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
PricebookEntry >> ActivePriceAdjustmentQuantity [

	^ ActivePriceAdjustmentQuantity
]

{ #category : #accessing }
PricebookEntry >> ActivePriceAdjustmentQuantity: anObject [

	ActivePriceAdjustmentQuantity := anObject
]

{ #category : #accessing }
PricebookEntry >> CurrencyIsoCode [

	^ CurrencyIsoCode
]

{ #category : #accessing }
PricebookEntry >> CurrencyIsoCode: anObject [

	CurrencyIsoCode := anObject
]

{ #category : #accessing }
PricebookEntry >> IsActive [

	^ IsActive
]

{ #category : #accessing }
PricebookEntry >> IsActive: anObject [

	IsActive := anObject
]

{ #category : #accessing }
PricebookEntry >> IsArchived [

	^ IsArchived
]

{ #category : #accessing }
PricebookEntry >> IsArchived: anObject [

	IsArchived := anObject
]

{ #category : #accessing }
PricebookEntry >> Name [

	^ Name
]

{ #category : #accessing }
PricebookEntry >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
PricebookEntry >> Pricebook2Id [

	^ Pricebook2Id
]

{ #category : #accessing }
PricebookEntry >> Pricebook2Id: anObject [

	Pricebook2Id := anObject
]

{ #category : #accessing }
PricebookEntry >> Product2Id [

	^ Product2Id
]

{ #category : #accessing }
PricebookEntry >> Product2Id: anObject [

	Product2Id := anObject
]

{ #category : #accessing }
PricebookEntry >> ProductCode [

	^ ProductCode
]

{ #category : #accessing }
PricebookEntry >> ProductCode: anObject [

	ProductCode := anObject
]

{ #category : #accessing }
PricebookEntry >> ProductSellingModelId [

	^ ProductSellingModelId
]

{ #category : #accessing }
PricebookEntry >> ProductSellingModelId: anObject [

	ProductSellingModelId := anObject
]

{ #category : #accessing }
PricebookEntry >> UnitPrice [

	^ UnitPrice
]

{ #category : #accessing }
PricebookEntry >> UnitPrice: anObject [

	UnitPrice := anObject
]

{ #category : #accessing }
PricebookEntry >> UseStandardPrice [

	^ UseStandardPrice
]

{ #category : #accessing }
PricebookEntry >> UseStandardPrice: anObject [

	UseStandardPrice := anObject
]

{ #category : #initialization }
PricebookEntry >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'PricebookEntry'.
	self excludedFields:
		#( 'ActivePriceAdjustmentQuantity' 'CurrencyIsoCode'
		   'IsArchived' 'Name' 'Pricebook2Id' 'Product2Id' 'ProductCode'
		   'ProductSellingModelId' )
]
