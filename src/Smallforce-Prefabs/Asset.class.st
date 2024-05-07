"
I represent an Asset object in a Salesforce org.

My fields conform to the API spec here: https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_asset.htm
"
Class {
	#name : #Asset,
	#superclass : #SObject,
	#instVars : [
		'AccountId',
		'Address',
		'AssetLevel',
		'AssetProvidedById',
		'AssetServicedById',
		'Availability',
		'AveragetimeToRepair',
		'AveragetimeBetweenFailure',
		'AverageUptimePerDay',
		'City',
		'ConsequenceOfFailure',
		'ContactId',
		'Country',
		'CurrencyIsoCode',
		'CurrentAmount',
		'CurrentLifecycleEndDate',
		'CurrentMrr',
		'CurrentQuantity',
		'Description',
		'DigitalAssetStatus',
		'ExternalIdentifier',
		'GeocodeAccuracy',
		'HasLifecycleManagement',
		'InstallDate',
		'IsCompetitorProduct',
		'IsInternal',
		'LastReferencedDate',
		'LastViewedDate',
		'Latitude',
		'LifecycleEndDate',
		'LifecycleStartDate',
		'LocatioNId',
		'Longitude',
		'ManufactureDate',
		'Name',
		'OwnerId',
		'ParentId',
		'PostalCode',
		'Price',
		'PricingSource',
		'Product2Id',
		'ProductCode',
		'ProductDescription',
		'ProductFamily',
		'PurchaseDate',
		'Quantity',
		'QuantityIncreasePricingType',
		'RecordTypEid',
		'Reliability',
		'RenewalPricingType',
		'RenewalTerm',
		'RenewalTermUnit',
		'RootAssetId',
		'SalesStoreId',
		'SerialNumber',
		'State',
		'Status',
		'StatusReason',
		'StockKeepingUnit',
		'Street',
		'SumDowntime',
		'SumUnplannedDowntime',
		'TotalLifecycleAmount',
		'UptimeRecordEnd',
		'UptimeRecordStart',
		'UsageEndDate',
		'Uuid'
	],
	#category : #'Smallforce-Prefabs-Base'
}

{ #category : #accessing }
Asset >> AccountId [

	^ AccountId
]

{ #category : #accessing }
Asset >> AccountId: anObject [

	AccountId := anObject
]

{ #category : #accessing }
Asset >> Address [

	^ Address
]

{ #category : #accessing }
Asset >> Address: anObject [

	Address := anObject
]

{ #category : #accessing }
Asset >> AssetLevel [

	^ AssetLevel
]

{ #category : #accessing }
Asset >> AssetLevel: anObject [

	AssetLevel := anObject
]

{ #category : #accessing }
Asset >> AssetProvidedById [

	^ AssetProvidedById
]

{ #category : #accessing }
Asset >> AssetProvidedById: anObject [

	AssetProvidedById := anObject
]

{ #category : #accessing }
Asset >> AssetServicedById [

	^ AssetServicedById
]

{ #category : #accessing }
Asset >> AssetServicedById: anObject [

	AssetServicedById := anObject
]

{ #category : #accessing }
Asset >> Availability [

	^ Availability
]

{ #category : #accessing }
Asset >> Availability: anObject [

	Availability := anObject
]

{ #category : #accessing }
Asset >> AverageUptimePerDay [

	^ AverageUptimePerDay
]

{ #category : #accessing }
Asset >> AverageUptimePerDay: anObject [

	AverageUptimePerDay := anObject
]

{ #category : #accessing }
Asset >> AveragetimeBetweenFailure [

	^ AveragetimeBetweenFailure
]

{ #category : #accessing }
Asset >> AveragetimeBetweenFailure: anObject [

	AveragetimeBetweenFailure := anObject
]

{ #category : #accessing }
Asset >> AveragetimeToRepair [

	^ AveragetimeToRepair
]

{ #category : #accessing }
Asset >> AveragetimeToRepair: anObject [

	AveragetimeToRepair := anObject
]

{ #category : #accessing }
Asset >> City [

	^ City
]

{ #category : #accessing }
Asset >> City: anObject [

	City := anObject
]

{ #category : #accessing }
Asset >> ConsequenceOfFailure [

	^ ConsequenceOfFailure
]

{ #category : #accessing }
Asset >> ConsequenceOfFailure: anObject [

	ConsequenceOfFailure := anObject
]

{ #category : #accessing }
Asset >> ContactId [

	^ ContactId
]

{ #category : #accessing }
Asset >> ContactId: anObject [

	ContactId := anObject
]

{ #category : #accessing }
Asset >> Country [

	^ Country
]

{ #category : #accessing }
Asset >> Country: anObject [

	Country := anObject
]

{ #category : #accessing }
Asset >> CurrencyIsoCode [

	^ CurrencyIsoCode
]

{ #category : #accessing }
Asset >> CurrencyIsoCode: anObject [

	CurrencyIsoCode := anObject
]

{ #category : #accessing }
Asset >> CurrentAmount [

	^ CurrentAmount
]

{ #category : #accessing }
Asset >> CurrentAmount: anObject [

	CurrentAmount := anObject
]

{ #category : #accessing }
Asset >> CurrentLifecycleEndDate [

	^ CurrentLifecycleEndDate
]

{ #category : #accessing }
Asset >> CurrentLifecycleEndDate: anObject [

	CurrentLifecycleEndDate := anObject
]

{ #category : #accessing }
Asset >> CurrentMrr [

	^ CurrentMrr
]

{ #category : #accessing }
Asset >> CurrentMrr: anObject [

	CurrentMrr := anObject
]

{ #category : #accessing }
Asset >> CurrentQuantity [

	^ CurrentQuantity
]

{ #category : #accessing }
Asset >> CurrentQuantity: anObject [

	CurrentQuantity := anObject
]

{ #category : #accessing }
Asset >> Description [

	^ Description
]

{ #category : #accessing }
Asset >> Description: anObject [

	Description := anObject
]

{ #category : #accessing }
Asset >> DigitalAssetStatus [

	^ DigitalAssetStatus
]

{ #category : #accessing }
Asset >> DigitalAssetStatus: anObject [

	DigitalAssetStatus := anObject
]

{ #category : #accessing }
Asset >> ExternalIdentifier [

	^ ExternalIdentifier
]

{ #category : #accessing }
Asset >> ExternalIdentifier: anObject [

	ExternalIdentifier := anObject
]

{ #category : #accessing }
Asset >> GeocodeAccuracy [

	^ GeocodeAccuracy
]

{ #category : #accessing }
Asset >> GeocodeAccuracy: anObject [

	GeocodeAccuracy := anObject
]

{ #category : #accessing }
Asset >> HasLifecycleManagement [

	^ HasLifecycleManagement
]

{ #category : #accessing }
Asset >> HasLifecycleManagement: anObject [

	HasLifecycleManagement := anObject
]

{ #category : #accessing }
Asset >> InstallDate [

	^ InstallDate
]

{ #category : #accessing }
Asset >> InstallDate: anObject [

	InstallDate := anObject
]

{ #category : #accessing }
Asset >> IsCompetitorProduct [

	^ IsCompetitorProduct
]

{ #category : #accessing }
Asset >> IsCompetitorProduct: anObject [

	IsCompetitorProduct := anObject
]

{ #category : #accessing }
Asset >> IsInternal [

	^ IsInternal
]

{ #category : #accessing }
Asset >> IsInternal: anObject [

	IsInternal := anObject
]

{ #category : #accessing }
Asset >> LastReferencedDate [

	^ LastReferencedDate
]

{ #category : #accessing }
Asset >> LastReferencedDate: anObject [

	LastReferencedDate := anObject
]

{ #category : #accessing }
Asset >> LastViewedDate [

	^ LastViewedDate
]

{ #category : #accessing }
Asset >> LastViewedDate: anObject [

	LastViewedDate := anObject
]

{ #category : #accessing }
Asset >> Latitude [

	^ Latitude
]

{ #category : #accessing }
Asset >> Latitude: anObject [

	Latitude := anObject
]

{ #category : #accessing }
Asset >> LifecycleEndDate [

	^ LifecycleEndDate
]

{ #category : #accessing }
Asset >> LifecycleEndDate: anObject [

	LifecycleEndDate := anObject
]

{ #category : #accessing }
Asset >> LifecycleStartDate [

	^ LifecycleStartDate
]

{ #category : #accessing }
Asset >> LifecycleStartDate: anObject [

	LifecycleStartDate := anObject
]

{ #category : #accessing }
Asset >> LocatioNId [

	^ LocatioNId
]

{ #category : #accessing }
Asset >> LocatioNId: anObject [

	LocatioNId := anObject
]

{ #category : #accessing }
Asset >> Longitude [

	^ Longitude
]

{ #category : #accessing }
Asset >> Longitude: anObject [

	Longitude := anObject
]

{ #category : #accessing }
Asset >> ManufactureDate [

	^ ManufactureDate
]

{ #category : #accessing }
Asset >> ManufactureDate: anObject [

	ManufactureDate := anObject
]

{ #category : #accessing }
Asset >> Name [

	^ Name
]

{ #category : #accessing }
Asset >> Name: anObject [

	Name := anObject
]

{ #category : #accessing }
Asset >> OwnerId [

	^ OwnerId
]

{ #category : #accessing }
Asset >> OwnerId: anObject [

	OwnerId := anObject
]

{ #category : #accessing }
Asset >> ParentId [

	^ ParentId
]

{ #category : #accessing }
Asset >> ParentId: anObject [

	ParentId := anObject
]

{ #category : #accessing }
Asset >> PostalCode [

	^ PostalCode
]

{ #category : #accessing }
Asset >> PostalCode: anObject [

	PostalCode := anObject
]

{ #category : #accessing }
Asset >> Price [

	^ Price
]

{ #category : #accessing }
Asset >> Price: anObject [

	Price := anObject
]

{ #category : #accessing }
Asset >> PricingSource [

	^ PricingSource
]

{ #category : #accessing }
Asset >> PricingSource: anObject [

	PricingSource := anObject
]

{ #category : #accessing }
Asset >> Product2Id [

	^ Product2Id
]

{ #category : #accessing }
Asset >> Product2Id: anObject [

	Product2Id := anObject
]

{ #category : #accessing }
Asset >> ProductCode [

	^ ProductCode
]

{ #category : #accessing }
Asset >> ProductCode: anObject [

	ProductCode := anObject
]

{ #category : #accessing }
Asset >> ProductDescription [

	^ ProductDescription
]

{ #category : #accessing }
Asset >> ProductDescription: anObject [

	ProductDescription := anObject
]

{ #category : #accessing }
Asset >> ProductFamily [

	^ ProductFamily
]

{ #category : #accessing }
Asset >> ProductFamily: anObject [

	ProductFamily := anObject
]

{ #category : #accessing }
Asset >> PurchaseDate [

	^ PurchaseDate
]

{ #category : #accessing }
Asset >> PurchaseDate: anObject [

	PurchaseDate := anObject
]

{ #category : #accessing }
Asset >> Quantity [

	^ Quantity
]

{ #category : #accessing }
Asset >> Quantity: anObject [

	Quantity := anObject
]

{ #category : #accessing }
Asset >> QuantityIncreasePricingType [

	^ QuantityIncreasePricingType
]

{ #category : #accessing }
Asset >> QuantityIncreasePricingType: anObject [

	QuantityIncreasePricingType := anObject
]

{ #category : #accessing }
Asset >> RecordTypEid [

	^ RecordTypEid
]

{ #category : #accessing }
Asset >> RecordTypEid: anObject [

	RecordTypEid := anObject
]

{ #category : #accessing }
Asset >> Reliability [

	^ Reliability
]

{ #category : #accessing }
Asset >> Reliability: anObject [

	Reliability := anObject
]

{ #category : #accessing }
Asset >> RenewalPricingType [

	^ RenewalPricingType
]

{ #category : #accessing }
Asset >> RenewalPricingType: anObject [

	RenewalPricingType := anObject
]

{ #category : #accessing }
Asset >> RenewalTerm [

	^ RenewalTerm
]

{ #category : #accessing }
Asset >> RenewalTerm: anObject [

	RenewalTerm := anObject
]

{ #category : #accessing }
Asset >> RenewalTermUnit [

	^ RenewalTermUnit
]

{ #category : #accessing }
Asset >> RenewalTermUnit: anObject [

	RenewalTermUnit := anObject
]

{ #category : #accessing }
Asset >> RootAssetId [

	^ RootAssetId
]

{ #category : #accessing }
Asset >> RootAssetId: anObject [

	RootAssetId := anObject
]

{ #category : #accessing }
Asset >> SalesStoreId [

	^ SalesStoreId
]

{ #category : #accessing }
Asset >> SalesStoreId: anObject [

	SalesStoreId := anObject
]

{ #category : #accessing }
Asset >> SerialNumber [

	^ SerialNumber
]

{ #category : #accessing }
Asset >> SerialNumber: anObject [

	SerialNumber := anObject
]

{ #category : #accessing }
Asset >> State [

	^ State
]

{ #category : #accessing }
Asset >> State: anObject [

	State := anObject
]

{ #category : #accessing }
Asset >> Status [

	^ Status
]

{ #category : #accessing }
Asset >> Status: anObject [

	Status := anObject
]

{ #category : #accessing }
Asset >> StatusReason [

	^ StatusReason
]

{ #category : #accessing }
Asset >> StatusReason: anObject [

	StatusReason := anObject
]

{ #category : #accessing }
Asset >> StockKeepingUnit [

	^ StockKeepingUnit
]

{ #category : #accessing }
Asset >> StockKeepingUnit: anObject [

	StockKeepingUnit := anObject
]

{ #category : #accessing }
Asset >> Street [

	^ Street
]

{ #category : #accessing }
Asset >> Street: anObject [

	Street := anObject
]

{ #category : #accessing }
Asset >> SumDowntime [

	^ SumDowntime
]

{ #category : #accessing }
Asset >> SumDowntime: anObject [

	SumDowntime := anObject
]

{ #category : #accessing }
Asset >> SumUnplannedDowntime [

	^ SumUnplannedDowntime
]

{ #category : #accessing }
Asset >> SumUnplannedDowntime: anObject [

	SumUnplannedDowntime := anObject
]

{ #category : #accessing }
Asset >> TotalLifecycleAmount [

	^ TotalLifecycleAmount
]

{ #category : #accessing }
Asset >> TotalLifecycleAmount: anObject [

	TotalLifecycleAmount := anObject
]

{ #category : #accessing }
Asset >> UptimeRecordEnd [

	^ UptimeRecordEnd
]

{ #category : #accessing }
Asset >> UptimeRecordEnd: anObject [

	UptimeRecordEnd := anObject
]

{ #category : #accessing }
Asset >> UptimeRecordStart [

	^ UptimeRecordStart
]

{ #category : #accessing }
Asset >> UptimeRecordStart: anObject [

	UptimeRecordStart := anObject
]

{ #category : #accessing }
Asset >> UsageEndDate [

	^ UsageEndDate
]

{ #category : #accessing }
Asset >> UsageEndDate: anObject [

	UsageEndDate := anObject
]

{ #category : #accessing }
Asset >> Uuid [

	^ Uuid
]

{ #category : #accessing }
Asset >> Uuid: anObject [

	Uuid := anObject
]

{ #category : #initialization }
Asset >> initialize [

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Asset'.
	self excludedFields:
		#( 'Address' 'AssetLevel' 'CurrentLifecycleEndDate'
		   'CurrentMrr' 'CurrentQuantityCurrentAmount'
		   'HasLifecycleManagement' 'LifecycleEndDate' 'LifecycleStartDate'
		   'ManufactureDate' 'ProductCode' 'RootAssetId' 'StockKeepingUnit'
		   'TotalLifecycleAmount' )
]
