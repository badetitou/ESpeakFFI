Class {
	#name : #'Espeak_ERROR',
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'EE_BUFFER_FULL',
		'EE_INTERNAL_ERROR',
		'EE_NOT_FOUND',
		'EE_OK'
	],
	#category : #'ESpeak-Enumeration'
}

{ #category : #'accessing enum' }
Espeak_ERROR class >> EE_BUFFER_FULL [
	"This method was automatically generated"
	^ EE_BUFFER_FULL
]

{ #category : #'accessing enum' }
Espeak_ERROR class >> EE_INTERNAL_ERROR [
	"This method was automatically generated"
	^ EE_INTERNAL_ERROR
]

{ #category : #'accessing enum' }
Espeak_ERROR class >> EE_NOT_FOUND [
	"This method was automatically generated"
	^ EE_NOT_FOUND
]

{ #category : #'accessing enum' }
Espeak_ERROR class >> EE_OK [
	"This method was automatically generated"
	^ EE_OK
]

{ #category : #'enum declaration' }
Espeak_ERROR class >> enumDecl [
	^ #(EE_OK 0
EE_INTERNAL_ERROR 4294967295
EE_BUFFER_FULL 1
EE_NOT_FOUND 2)
]

{ #category : #'class initialization' }
Espeak_ERROR class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]
