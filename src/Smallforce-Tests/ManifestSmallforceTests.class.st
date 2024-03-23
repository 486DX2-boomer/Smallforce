"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestSmallforceTests,
	#superclass : #PackageManifest,
	#category : #'Smallforce-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestSmallforceTests class >> ruleUncommonMessageSendRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#SmallforceRequestTest #setUp #false)) #'2024-03-23T15:06:00.086-04:00') )
]
