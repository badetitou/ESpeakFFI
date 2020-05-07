Class {
	#name : #ESpeakSynthCallback,
	#superclass : #FFICallback,
	#category : #'ESpeak-Callback'
}

{ #category : #'instance creation' }
ESpeakSynthCallback class >> fnSpec [
	^ #(int #(short * wav , int numsamples , Espeak_EVENT * events))
]

{ #category : #'instance creation' }
ESpeakSynthCallback class >> on: aBlock [
	^ self signature: self fnSpec block: aBlock
]
