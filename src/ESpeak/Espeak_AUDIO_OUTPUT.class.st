Class {
	#name : #'Espeak_AUDIO_OUTPUT',
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'AUDIO_OUTPUT_PLAYBACK',
		'AUDIO_OUTPUT_RETRIEVAL',
		'AUDIO_OUTPUT_SYNCHRONOUS',
		'AUDIO_OUTPUT_SYNCH_PLAYBACK'
	],
	#category : #'ESpeak-Enumeration'
}

{ #category : #'accessing enum' }
Espeak_AUDIO_OUTPUT class >> AUDIO_OUTPUT_PLAYBACK [
	"This method was automatically generated"
	^ AUDIO_OUTPUT_PLAYBACK
]

{ #category : #'accessing enum' }
Espeak_AUDIO_OUTPUT class >> AUDIO_OUTPUT_RETRIEVAL [
	"This method was automatically generated"
	^ AUDIO_OUTPUT_RETRIEVAL
]

{ #category : #'accessing enum' }
Espeak_AUDIO_OUTPUT class >> AUDIO_OUTPUT_SYNCHRONOUS [
	"This method was automatically generated"
	^ AUDIO_OUTPUT_SYNCHRONOUS
]

{ #category : #'accessing enum' }
Espeak_AUDIO_OUTPUT class >> AUDIO_OUTPUT_SYNCH_PLAYBACK [
	"This method was automatically generated"
	^ AUDIO_OUTPUT_SYNCH_PLAYBACK
]

{ #category : #'class initialization' }
Espeak_AUDIO_OUTPUT class >> enumDecl [
	^ #(AUDIO_OUTPUT_PLAYBACK 0
AUDIO_OUTPUT_RETRIEVAL 1
AUDIO_OUTPUT_SYNCHRONOUS 2
AUDIO_OUTPUT_SYNCH_PLAYBACK 3)
]

{ #category : #'class initialization' }
Espeak_AUDIO_OUTPUT class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]
