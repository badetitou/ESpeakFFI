Class {
	#name : #'Espeak_VOICE',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_AGE',
		'OFFSET_GENDER',
		'OFFSET_IDENTIFIER',
		'OFFSET_LANGUAGES',
		'OFFSET_NAME',
		'OFFSET_SCORE',
		'OFFSET_SPARE',
		'OFFSET_VARIANT',
		'OFFSET_XX1'
	],
	#category : #'ESpeak-Structure'
}

{ #category : #'field definition' }
Espeak_VOICE class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
	String name;
	String languages; 
	String identifier;
	char gender;
	char age;
	char variant;
	char xx1;
	int score;
	void *spare;
	)
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> age [
	"This method was automatically generated"
	^handle unsignedCharAt: OFFSET_AGE
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> age: anObject [
	"This method was automatically generated"
	handle unsignedCharAt: OFFSET_AGE put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> gender [
	"This method was automatically generated"
	^handle unsignedCharAt: OFFSET_GENDER
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> gender: anObject [
	"This method was automatically generated"
	handle unsignedCharAt: OFFSET_GENDER put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> identifier [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_IDENTIFIER) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> identifier: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_IDENTIFIER put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> languages [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LANGUAGES) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> languages: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LANGUAGES put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NAME put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> score [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_SCORE
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> score: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_SCORE put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> spare [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_SPARE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> spare: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_SPARE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> variant [
	"This method was automatically generated"
	^handle unsignedCharAt: OFFSET_VARIANT
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> variant: anObject [
	"This method was automatically generated"
	handle unsignedCharAt: OFFSET_VARIANT put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> xx1 [
	"This method was automatically generated"
	^handle unsignedCharAt: OFFSET_XX1
]

{ #category : #'accessing structure variables' }
Espeak_VOICE >> xx1: anObject [
	"This method was automatically generated"
	handle unsignedCharAt: OFFSET_XX1 put: anObject
]
