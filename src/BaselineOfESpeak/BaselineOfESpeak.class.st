Class {
	#name : #BaselineOfESpeak,
	#superclass : #BaselineOf,
	#category : #BaselineOfESpeak
}

{ #category : #baselines }
BaselineOfESpeak >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfESpeak >> defineDependencies: spec [
]

{ #category : #baselines }
BaselineOfESpeak >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfESpeak >> definePackages: spec [
	spec package: 'ESpeak'
]
