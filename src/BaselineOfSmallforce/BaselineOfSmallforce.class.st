Class {
	#name : #BaselineOfSmallforce,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmallforce
}

{ #category : #baseline }
BaselineOfSmallforce >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Smallforce';
				package: 'Smallforce-Commands';
				package: 'Smallforce-Prefabs' with: [ spec requires: #('Smallforce') ];
				package: 'Smallforce-Tests' with: [ spec requires: #('Smallforce') ].
 ]
]
