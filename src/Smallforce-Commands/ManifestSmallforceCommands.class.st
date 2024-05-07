"
I contain Pharo command extensions that are bundled with Smallforce.

**Generate accessors - capitalized**
Smallforce SObjects require capitalized accessors because they are dynamically mapped to Salesforce objects based on API field names. This breaks Smalltalk convention, but is necessary for a intuitive experience working with Salesforce data. For custom objects with many fields, this would require manually renaming dozens of accessors created with the standard accessor generation operation. This command modifies the built-in Pharo refactoring to create accessors with capitalized names and is available from the standard refactoring menu.
"
Class {
	#name : #ManifestSmallforceCommands,
	#superclass : #PackageManifest,
	#category : #'Smallforce-Commands-Manifest'
}
