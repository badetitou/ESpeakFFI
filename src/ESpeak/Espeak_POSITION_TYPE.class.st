Class {
	#name : #'Espeak_POSITION_TYPE',
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'POS_CHARACTER',
		'POS_SENTENCE',
		'POS_WORD'
	],
	#category : #'ESpeak-Enumeration'
}

{ #category : #'accessing enum' }
Espeak_POSITION_TYPE class >> POS_CHARACTER [
	"This method was automatically generated"
	^ POS_CHARACTER
]

{ #category : #'accessing enum' }
Espeak_POSITION_TYPE class >> POS_SENTENCE [
	"This method was automatically generated"
	^ POS_SENTENCE
]

{ #category : #'accessing enum' }
Espeak_POSITION_TYPE class >> POS_WORD [
	"This method was automatically generated"
	^ POS_WORD
]

{ #category : #'class initialization' }
Espeak_POSITION_TYPE class >> enumDecl [
	^ #(POS_CHARACTER 1
POS_WORD 2
POS_SENTENCE 3)
]

{ #category : #'class initialization' }
Espeak_POSITION_TYPE class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]
