Class {
	#name : #'Espeak_EVENT_TYPE',
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'espeakEVENT_END',
		'espeakEVENT_LIST_TERMINATED',
		'espeakEVENT_MARK',
		'espeakEVENT_MSG_TERMINATED',
		'espeakEVENT_PHONEME',
		'espeakEVENT_PLAY',
		'espeakEVENT_SAMPLERATE',
		'espeakEVENT_SENTENCE',
		'espeakEVENT_WORD'
	],
	#category : #'ESpeak-Enumeration'
}

{ #category : #'enum declaration' }
Espeak_EVENT_TYPE class >> enumDecl [
	^ #(espeakEVENT_LIST_TERMINATED 0
espeakEVENT_WORD 1
espeakEVENT_SENTENCE 2
espeakEVENT_MARK 3
espeakEVENT_PLAY 4
espeakEVENT_END 5
espeakEVENT_MSG_TERMINATED 6
espeakEVENT_PHONEME 7
espeakEVENT_SAMPLERATE 8 )
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_END [
	"This method was automatically generated"
	^ espeakEVENT_END
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_LIST_TERMINATED [
	"This method was automatically generated"
	^ espeakEVENT_LIST_TERMINATED
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_MARK [
	"This method was automatically generated"
	^ espeakEVENT_MARK
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_MSG_TERMINATED [
	"This method was automatically generated"
	^ espeakEVENT_MSG_TERMINATED
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_PHONEME [
	"This method was automatically generated"
	^ espeakEVENT_PHONEME
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_PLAY [
	"This method was automatically generated"
	^ espeakEVENT_PLAY
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_SAMPLERATE [
	"This method was automatically generated"
	^ espeakEVENT_SAMPLERATE
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_SENTENCE [
	"This method was automatically generated"
	^ espeakEVENT_SENTENCE
]

{ #category : #'accessing enum' }
Espeak_EVENT_TYPE class >> espeakEVENT_WORD [
	"This method was automatically generated"
	^ espeakEVENT_WORD
]

{ #category : #'enum declaration' }
Espeak_EVENT_TYPE class >> initialize [
	"self rebuildEnumAccessors"
	self initializeEnumeration
]
