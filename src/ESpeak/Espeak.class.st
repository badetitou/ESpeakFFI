Class {
	#name : #Espeak,
	#superclass : #Object,
	#category : #'ESpeak-Library'
}

{ #category : #api }
Espeak >> say: aString [
	| text |
	text := aString encodeWith: #utf8.

	EspeakLibrary uniqueInstance
		espeak_SynthText: text
		size: text size
		position: 0
		positionType: Espeak_POSITION_TYPE POS_CHARACTER
		endPosition: 0
		flags: EspeakLibrary espeakCHARS_AUTO
		uniqueIdentifier: nil
		userData: nil.
	EspeakLibrary uniqueInstance espeak_Synchronize
]
