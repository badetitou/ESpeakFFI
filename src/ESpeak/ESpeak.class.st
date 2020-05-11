Class {
	#name : #ESpeak,
	#superclass : #Object,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'ESpeak-Public API'
}

{ #category : #accessing }
ESpeak class >> uniqueInstance [ 
	^ uniqueInstance ifNil: [ uniqueInstance := super new ]
]

{ #category : #'as yet unclassified' }
ESpeak >> callbackMethod [
	^ ESpeakSynthCallback on: [ :a :b :c | 0 ]
]

{ #category : #initialization }
ESpeak >> cancel [
	ESpeakLibrary uniqueInstance espeak_Cancel
]

{ #category : #initialization }
ESpeak >> initialize [
	| cb |
	ESpeakLibrary uniqueInstance espeak_IsPlaying.

	ESpeakLibrary uniqueInstance
		espeak_InitializeWithOuput: Espeak_AUDIO_OUTPUT AUDIO_OUTPUT_PLAYBACK
		bufLength: 0
		path: nil
		andOptions: 0.


	cb := self callbackMethod.
	ESpeakLibrary uniqueInstance espeak_SetSynthCallback: cb
]

{ #category : #initialization }
ESpeak >> say: aText [
	| text |
	text := aText encodeWith: #utf8.
	^ ESpeakLibrary uniqueInstance
		espeak_SynthText: text
		size: text size
		position: 0
		positionType: Espeak_POSITION_TYPE POS_CHARACTER
		endPosition: 0
		flags: ESpeakLibrary espeakCHARS_AUTO
		uniqueIdentifier: nil
		userData: nil
]
