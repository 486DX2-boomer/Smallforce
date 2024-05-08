# Smallforce

Smallforce provides bindings to the Salesforce REST API in Pharo Smalltalk. Get information about your org, work with records, and extend Smallforce's provided classes to develop and implement your org's business logic with the elegant, introspective and fully live programming environment made possible by Pharo.

Smallforce does not bind the entire Salesforce API. Instead, it is designed for common use cases described in the [Salesforce API documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_user_tasks.htm) and includes a set of "prefabs" that mirror Salesforce's most familiar Standard Objects so you can get started right away.

## Key Concepts

You use Smallforce by working with two classes: _Smallforce_ and _SObject_.

_Smallforce_ is your connection to your Salesforce org. It wraps a ZnClient to easily send and receive data to your org. Data received from your org is converted from JSON responses to Smalltalk objects, and vice versa.

_SObject_ is an abstract class that represents an Object in your Salesforce org. The SObject class represents an object in your org; an instance of SObject represents a record of that object in your org. SObject is designed to be subclassed by you to represent your org's Custom Objects.

Once you have a Smallforce connection set up, you can query records from your org and create local SObjects with that data, or create local SObjects and insert them into your org. It's not just manipulating records, though: you can get information about your org, execute SOQL queries, and manage user passwords.

## Setup

**Smallforce is tested and working only on Pharo 10. Newer versions of Pharo contain certain changes that break Smallforce's dependencies.**

Load a Pharo 10 image and evaluate this command in a Playground:

```Smalltalk

Metacello new
	baseline: 'Smallforce';
	repository: 'github://486DX2-boomer/Smallforce';
	load

```

To get Smallforce connected to your Salesforce instance, do the following:

Follow the instructions to sign up and authenticate from the [Salesforce REST documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart.htm).

1. You will need a developer org (or Trailhead playground).
2. Login to your org and setup your credentials.
3. Create a permission set with API Enabled permissions, and assign it your user.
4. Get your authentication token. I recommend using the Salesforce CLI.
5. Use the sf org command with `display --target org` and your username. It will look something like: `sf org display --target-org yourname@adjective-animal-1abcd2.com`
6. The CLI will provide you with your access token, API version, and instance URL. It will look like this:

```
=== Org Description

 KEY              VALUE

 ──────────────── ────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Access Token     00abc00def00012345
 Api Version      60.0

 Client Id        PlatformCLI

 Connected Status Connected

 Id               00abc000001A2c3d

 Instance Url     https://adjective-animal-1abcd2-dev-ed.my.salesforce.com

 Username         yourname@adjective-animal-1abcd2.com
```

## Working with Smallforce

Create a new Smallforce object with your authentication details:

```
sf := Smallforce new.
sf accessToken: '00abc00def00012345'; org: 'https://adjective-animal-1abcd2-dev-ed.my.salesforce.com'; sfVersion:'v60.0'.
```

Let's [get our org limits](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_limits.htm) to see if our authentication is working:

```
sf limits.
```

Highlight and inspect this line; you should get an Inspector on a Dictionary object containing the response from this API call. Smallforce converted the JSON response from the API to a native Smalltalk object to make the data frictionless to work with.

Did you accidentally evaluate the line but didn't open the inspector on it? Smallforce caches the last response it received from the API, so save yourself an API call by sending the message `lastResponse` to Smallforce.

```
(sf lastResponse) at: 'DailyApiRequests' -> a Dictionary('Max'->15000 'Remaining'->14904 )
```

## Create and Insert a Record

Let's insert a Contact record into our org.

```
barney := Contact new FirstName: 'Barney'; LastName: 'Calhoun'; Phone: '575-555-4400'; Department: 'Security'; Title: 'Security Officer'. -> a Contact
```

Now we have a local SObject (Contact is a subclass of SObject), but the data is only in our Pharo image. Pass Barney as an argument to the `createRecordAndAssignId:` message.

```
sf createRecordAndAssignId: barney. -> a Dictionary('errors'->#() 'id'->'003aj000002FNsnAAG' 'success'->true )
```

The response from the API indicates that the insert was a success. If we check our org, we'll see we have a record for Barney:

![Contact record insert success](/docs/insert-contact-success.png)

Smallforce has two createRecord messages. If we were only performing an insert and we were not going to work with our local object any more, we could have used `createRecord:`. We used `createRecordAndAssignId:` because it retrieves the unique record ID from the API response and assigns it to our local SObject. This means our Contact contains a reference to the record in Salesforce, and as we perform further operations on our data in both directions we maintain the link between the local object and our org's record.

## Update Fields On or Sync From an Existing Record

You'll notice I made a mistake and forgot to set a few fields on Barney's record. In Salesforce, I'll set his Salutation to 'Mr.' and set his account relationship to Black Mesa.

![Updating contact record externally](/docs/updating-contact-externally.png)

But now my local representation of Barney's record is out of sync with my data in Salesforce. I could manually set these new fields locally, or use `getFieldValues:` to retrieve them from the API:

```
sf getFieldValues: barney fields: #('Salutation' 'AccountId').
barney Salutation: (sf lastResponse at: 'Salutation').
barney AccountId: (sf lastResponse at: 'AccountId').
```

Great, now we're back in sync. Oops, I just realized I didn't set Barney's email. I'll set his email and then update Salesforce with the Email field using the `updateRecord:` message:

```
barney Email: 'bcalhoun@blackmesa.gov'.
sf updateRecord: barney withFields: #('Email').
```

As you can see, it quickly becomes cumbersome to keep our data in sync across two systems by manually setting and updating fields. Smallforce provides two messages, `syncFromSalesforce` and `syncToSalesforce` to set all of our fields locally or externally in one go.

Let's work on Dr. Kleiner's record:

```
isaac := Contact new.
isaac recordId: '003aj0000025VQEAA2'. "Dr. Kleiner's record ID from Salesforce"
sf syncFromSalesforce: isaac.
isaac inspect.
```

When we inspect Dr. Kleiner's record, we see that all of the available fields from Salesforce are set on our local object.

![Inspecting local Contact object](/docs/inspect-contact-object.png)

I need to update Dr. Kleiner's phone number and the ReportsTo field to refer to Dr. Breen:

```
isaac Phone: '575-555-1999'.
isaac ReportsToId: '003aj000002FNWYAA4'. "Dr. Breen's id"
sf syncToSalesforce: isaac.
```

The fields are updated in Salesforce without the need to explicitly declare which fields we wanted to update.

![Contact sync success](/docs/contact-sync-success.png)

**WARNING: If you have nil values on your local SObject, those fields _WILL_ be set to null in Salesforce, as it is assumed you intended them to be nil. Be careful when syncing to Salesforce, as making a mistake such as creating an empty SObject and syncing it to a Salesforce record without syncing from Salesforce first will null all the fields on your Salesforce data!**

## Custom Fields on Standard Objects

In our company, we periodically evaluate our customer accounts and estimate the public relations impact of our business dealings with those entities. We have a custom field on the Account object called Public Relations Risk, and its API name is Public_Relations_Risk\_\_c.

![Account custom field in Salesforce](/docs/account-custom-field-in-salesforce.png)

We don't have a field on our local Account SObject to access this custom field... yet. But this is Smalltalk: it's all about giving you the control to extend objects how and when you need to.

Open a browser on the Account prefab.

![Account prefab in Smallforce-Prefabs package](/docs/smallforce-account-prefab-browser.png)

To allow Smallforce to work with our custom field, we need to both _define an instance variable_ on the class and _generate accessors_ for that variable.

We use the Salesforce API name, not Field Label, when designing SObjects. Add `Public_Relations_Risk__c` to our instance variables:

```
SObject subclass: #Account
	instanceVariableNames: 'Public_Relations_Risk__c AccountNumber AccountSource AnnualRevenue BillingAddress BillingCity BillingCountry BillingCountryCode BillingGeocodeAccuracy BillingLatitude BillingLongitude BillingPostalCode BillingState BillingStateCode BillingStreet ChannelProgramLevelName ChannelProgramName CleanStatus Description DunsNumber Fax Industry IsPartner Jigsaw LastActivityDate LastReferencedDate LastViewedDate MasterRecordId NaicsCode NaicsDesc Name NumberOfEmployees OperatingHoursId OwnerId Ownership ParentId Phone PhotoUrl Rating RecordTypeId ShippingAddress ShippingCity ShippingCountry ShippingCountryCode ShippingGeocodeAccuracy ShippingLatitude ShippingLongitude ShippingPostalCode ShippingState ShippingStateCode ShippingStreet Sic SicDesc Site TickerSymbol Tradestyle Type Website YearStarted'
	classVariableNames: ''
	package: 'Smallforce-Prefabs-Base'
```

>If you're an experienced Smalltalker, you'll have noticed by now we are breaking Smalltalk convention by using capitalized variable and accessor names. This break in convention was deemed a necessary tradeoff by the author. Smallforce's requests to Salesforce dynamically map SObjects to Salesforce Objects by case-sensitive names. It breaks convention but in so doing makes it trivial to represent Salesforce objects without requiring any additional logic to "translate" SObject fields to Salesforce fields. 

We can't use this field without accessors. As noted above, Smallforce *requires* that variables and accessors that represent Salesforce fields match Salesforce exactly, including being capitalized (but non-Salesforce variables should follow convention; more on that below.) While not a problem if we're only adding a field or two, if we had a custom object with dozens of fields, it soon becomes a nightmare to rename generated accessor names to capitalized forms. Luckily, when you installed Smallforce, it came with a command extension on Pharo to generate accessors with capitalized names:

![Capitalized accessor name refactoring](/docs/smallforce-capitalized-accessor-generator.png)

Our custom field on a Standard Object is now implemented in seconds.

```
umbrella := Account new.
umbrella recordId: '001aj00000FfsGkAAJ'.
umbrella Public_Relations_Risk__c: 79.
sf updateRecord: umbrella withFields: #('Public_Relations_Risk__c').
```

And in Salesforce, the Public Relations Risk field is updated just as expected:

![Salesforce Account custom field updated](/docs/account-custom-field-updated-in-salesforce.png)

## Create a Custom SObject

In our org, we have a Custom Object called Officer with the API name Officer__c. This represents "a law enforcement officer who is employed by a Department", another Custom Object. In Salesforce, I'll go to Setup > Object Manager > Officer > Fields & Relationships.

```
FIELD LABEL 		FIELD NAME 			DATA TYPE 			CONTROLLING FIELD	INDEXED
Created By			CreatedById			Lookup(User)							False	
Department			Department__c		Lookup(Department)						True	
Last Modified By	LastModifiedById	Lookup(User)							False	
Officer Name		Name				Text(80)								True	
Owner				OwnerId				Lookup(User,Group)						True	
Rank				Rank__c				Picklist								False
```

We subclass SObject and define the instance variables to correspond to the field names.

```
SObject subclass: #Officer
	instanceVariableNames: 'CreatedById Department__c LastModifiedById Name OwnerId Rank__c'
	classVariableNames: ''
	package: 'Smallforce-CustomObjects'
```

Generate the accessors, too.

![Generating the accessors on our custom object](/docs/custom-object-generate-accessors.png)

There's still another step before we can use our custom SObject: our subclass has the responsibility to implement `initialize`.

```
initialize

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self subclassResponsibility
```

We need to 1. always set our SObject instances to have the correct API name and 2. make sure we are not trying to update read-only fields in Salesforce.

Let's implement the `initialize` message on Officer:

```
initialize

	"All SObjects require an API name which should be defined on initialization by the subclass of SObject."

	"You should define read-only fields on the corresponding Salesforce object here by adding them to excludedFields."

	self apiName: 'Officer__c'.
	self excludedFields: #( 'CreatedById' 'LastModifiedById' )
```

Variable names added to excludedFields are not submitted to Salesforce when updating records. However, these fields still have values that can be read from Salesforce and set on our local SObjects.

If you're not sure which fields are read-only on your Custom Object, you can use the `describeObject` message like this:

```
sf describeObject: (Officer new).
```

In the response, you can access the fields in the `fields` dictionary. Each has a boolean field called `updateable`.

```
((sf describeObject: (Officer new)) at: 'fields') do: [ :field | (field at: 'updateable') ifFalse: [ Transcript show: (field at: 'name'), ' is read only'; cr. ] ]
```

Transcript:
```
Id is read only
IsDeleted is read only
CreatedDate is read only
CreatedById is read only
LastModifiedDate is read only
LastModifiedById is read only
SystemModstamp is read only
LastViewedDate is read only
LastReferencedDate is read only
```

You'll notice there are fields on the object, such as `IsDeleted`, which are not visible in the Object Manager. This is normal and it is not necessary to implement them on your SObject in most cases.

## Develop Custom Business Logic on a Custom SObject

## Execute an SOQL Query
