"
I am a command to generate accessors for all inst vars of given classes, with uppercase names.
"
Class {
	#name : #SycGenerateAllInstVarAccessorsUppercaseCommand,
	#superclass : #SycGenerateAllInstVarAccessorsCommand,
	#category : #'Smallforce-Commands'
}

{ #category : #converting }
SycGenerateAllInstVarAccessorsUppercaseCommand >> asRefactorings [

	| refactorings |
	refactorings := classes flatCollect: [:eachClass |
		eachClass	 slots collect: [:var | 
			var createRefactoring: RBCreateAccessorsForVariableRefactoringCapitalized for: eachClass]].
	refactorings do: [ :each | 
		each classVariable: false].
	^refactorings
]

{ #category : #accessing }
SycGenerateAllInstVarAccessorsUppercaseCommand >> defaultMenuItemName [
	^'Generate accessors - capitalized'
]
