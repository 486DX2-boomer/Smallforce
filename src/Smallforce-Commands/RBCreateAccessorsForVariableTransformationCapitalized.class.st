"
I am a refactoring for creating accessors for variables, with uppercase names.

I am used by a couple of other refactorings  creating new variables and accessors.

My precondition is that the variable name is defined for this class.
"
Class {
	#name : 'RBCreateAccessorsForVariableTransformationCapitalized',
	#superclass : 'RBCreateAccessorsForVariableTransformation',
	#category : 'Smallforce-Commands',
	#package : 'Smallforce-Commands'
}

{ #category : 'transforming' }
RBCreateAccessorsForVariableTransformationCapitalized >> defineSetterMethod [
	| definingClass string |
	definingClass := self definingClass.
	string := self needsReturnForSetter 
				ifTrue: ['<1s> anObject<r><r><t>^ <2s> := anObject']
				ifFalse: ['<1s> anObject<r><r><t><2s> := anObject'].
	selector := (self safeMethodNameFor: definingClass
				basedOn: variableName asString) capitalized , ':'.
	definingClass 
		compile: (string expandMacrosWith: selector with: variableName)
		classified: #accessing.
	^selector
]

{ #category : 'transforming' }
RBCreateAccessorsForVariableTransformationCapitalized >> selector [ 
	^ selector ifNil: [ 
		selector := (self safeMethodNameFor: self definingClass
				basedOn: variableName asString) capitalized ]
]
