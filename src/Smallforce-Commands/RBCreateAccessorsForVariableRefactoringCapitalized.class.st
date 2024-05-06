"
I am a refactoring for creating accessors for variables, with uppercase names.

I am used by a couple of other refactorings  creating new variables and accessors.

My precondition is that the variable name is defined for this class.
"
Class {
	#name : #RBCreateAccessorsForVariableRefactoringCapitalized,
	#superclass : #RBCreateAccessorsForVariableRefactoring,
	#category : #'Smallforce-Commands'
}

{ #category : #private }
RBCreateAccessorsForVariableRefactoringCapitalized >> defineSetterMethod [
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

{ #category : #accessing }
RBCreateAccessorsForVariableRefactoringCapitalized >> selector [ 
	^ selector ifNil: [ 
		selector := (self safeMethodNameFor: self definingClass
				basedOn: variableName asString) capitalized ]
]
