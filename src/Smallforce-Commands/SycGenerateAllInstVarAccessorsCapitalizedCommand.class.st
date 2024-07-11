"
I am a command to generate accessors for all inst vars of given classes, with capitalized names.
"
Class {
	#name : 'SycGenerateAllInstVarAccessorsCapitalizedCommand',
	#superclass : 'SycGenerateAllInstVarAccessorsCommand',
	#category : 'Smallforce-Commands',
	#package : 'Smallforce-Commands'
}

{ #category : 'execution' }
SycGenerateAllInstVarAccessorsCapitalizedCommand >> asRefactorings [

	| refactorings |
	refactorings := classes flatCollect: [:eachClass |
		eachClass	 slots collect: [:var | 
			var createRefactoring: RBCreateAccessorsForVariableTransformationCapitalized for: eachClass]].
	refactorings do: [ :each | 
		each classVariable: false].
	^refactorings
]

{ #category : 'accessing' }
SycGenerateAllInstVarAccessorsCapitalizedCommand >> defaultMenuItemName [
	^'Generate accessors - capitalized'
]
