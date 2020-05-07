Class {
	#name : #'Espeak_EVENT',
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_AUDIO_POSITION',
		'OFFSET_ID',
		'OFFSET_LENGTH',
		'OFFSET_SAMPLE',
		'OFFSET_TEXT_POSITION',
		'OFFSET_TYPE',
		'OFFSET_UNIQUE_IDENTIFIER',
		'OFFSET_USER_DATA'
	],
	#category : #'ESpeak-Structure'
}

{ #category : #'field definition' }
Espeak_EVENT class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(Espeak_EVENT_TYPE type;
	int unique_identifier;
	int text_position;
	int length;
	int audio_position;
	int sample;
	void* user_data;
	Espeak_ID id;
)
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> audio_position [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_AUDIO_POSITION
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> audio_position: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_AUDIO_POSITION put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> id [
	"This method was automatically generated"
	^ Espeak_ID fromHandle: (handle referenceStructAt: OFFSET_ID length: Espeak_ID byteSize)
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> id: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_ID put: anObject getHandle length: Espeak_ID byteSize
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> length [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LENGTH
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> length: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LENGTH put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> sample [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_SAMPLE
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> sample: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_SAMPLE put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> text_position [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TEXT_POSITION
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> text_position: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TEXT_POSITION put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> type [
	"This method was automatically generated"
	^Espeak_EVENT_TYPE fromInteger: (handle unsignedLongAt: OFFSET_TYPE)
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject value
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> unique_identifier [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_UNIQUE_IDENTIFIER
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> unique_identifier: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_UNIQUE_IDENTIFIER put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> user_data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_USER_DATA) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_EVENT >> user_data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_USER_DATA put: anObject getHandle.
]
