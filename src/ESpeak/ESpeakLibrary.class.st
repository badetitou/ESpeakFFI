Class {
	#name : #ESpeakLibrary,
	#superclass : #FFILibrary,
	#category : #'ESpeak-Library'
}

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakCHARS_16BIT [
	^ 4
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakCHARS_8BIT [
	^ 2
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakCHARS_AUTO [
	^ 0
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakCHARS_UTF8 [
	^ 1
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakCHARS_WCHAR [
	^ 3
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakINITIALIZE_DONT_EXIT [
	^ 16r8000
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakINITIALIZE_PHONEME_EVENTS [
	^ 16r0001
]

{ #category : #'as yet unclassified' }
ESpeakLibrary class >> espeakINITIALIZE_PHONEME_IPA [
	^ 16r0002
]

{ #category : #initialization }
ESpeakLibrary class >> reset [
	<script>
	uniqueInstance := nil
]

{ #category : #'as yet unclassified' }
ESpeakLibrary >> espeak_InitializeWithOuput: output bufLength: buflength path: path andOptions: options [
	" Must be called before any synthesis functions are called.
   output: the audio data can either be played by eSpeak or passed back by the SynthCallback function.

   buflength:  The length in mS of sound buffers passed to the SynthCallback function.
            Value=0 gives a default of 200mS.
            This paramater is only used for AUDIO_OUTPUT_RETRIEVAL and AUDIO_OUTPUT_SYNCHRONOUS modes.

   path: The directory which contains the espeak-data directory, or NULL for the default location.

   options: bit 0:  1=allow espeakEVENT_PHONEME events.
            bit 1:  1= espeakEVENT_PHONEME events give IPA phoneme names, not eSpeak phoneme names
            bit 15: 1=don't exit if espeak_data is not found (used for --help)

   Returns: sample rate in Hz, or -1 (EE_INTERNAL_ERROR).
"
	self ffiCall: 'int espeak_Initialize(Espeak_AUDIO_OUTPUT output, int buflength, void * path, int options)'
]

{ #category : #'as yet unclassified' }
ESpeakLibrary >> espeak_IsPlaying [
	self ffiCall: 'Boolean espeak_IsPlaying(void)'
]

{ #category : #'as yet unclassified' }
ESpeakLibrary >> espeak_Key: keyName [
	self
		ffiCall:
			'Espeak_ERROR espeak_Key(String keyName)'
]

{ #category : #'as yet unclassified' }
ESpeakLibrary >> espeak_SetSynthCallback: aSynthCallback [
	self ffiCall: 'void espeak_SetSynthCallback(void * aSynthCallback)'
]

{ #category : #'as yet unclassified' }
ESpeakLibrary >> espeak_SynthText: text size: size position: position positionType: espeak_POSITION_TYPE endPosition: endPosition flags: flags uniqueIdentifier: uniqueIdentifier userData: userData [
	self
		ffiCall:
			'Espeak_ERROR espeak_Synth(String * text,
	size_t size,
	int position,
	Espeak_POSITION_TYPE espeak_POSITION_TYPE,
	int endPosition,
	int flags,
	int * uniqueIdentifier,
	void * userData)'
]

{ #category : #'accessing platform' }
ESpeakLibrary >> win32LibraryName [
	((OSEnvironment current at: 'Path' ifAbsent: [ '' ]) substrings: ';'), {'C:\Program Files (x86)\eSpeak'}
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'espeak_sapi.dll'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlc library. Please check if it installed on your system'
]
