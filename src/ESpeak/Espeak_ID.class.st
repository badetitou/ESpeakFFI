Class {
	#name : #'Espeak_ID',
	#superclass : #FFIExternalUnion,
	#category : #'ESpeak-Structure'
}

{ #category : #'field definition' }
Espeak_ID class >> fieldsDesc [
	"
	self rebuildFieldAccessors
	"
	^#(
		int number;
		String name;
		String string;
 	)
]

{ #category : #'accessing structure variables' }
Espeak_ID >> name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 1) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_ID >> name: anObject [
	"This method was automatically generated"
	handle pointerAt: 1 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
Espeak_ID >> number [
	"This method was automatically generated"
	^handle signedLongAt: 1
]

{ #category : #'accessing structure variables' }
Espeak_ID >> number: anObject [
	"This method was automatically generated"
	handle signedLongAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
Espeak_ID >> string [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 1) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
Espeak_ID >> string: anObject [
	"This method was automatically generated"
	handle pointerAt: 1 put: anObject getHandle.
]
