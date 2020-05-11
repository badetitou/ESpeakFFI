Class {
	#name : #EspeakLibrary,
	#superclass : #FFILibrary,
	#instVars : [
		'cb'
	],
	#classInstVars : [
		'isInitialized'
	],
	#category : #'ESpeak-Library'
}

{ #category : #accessing }
EspeakLibrary class >> beInitialized [
	self isInitialized: true
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakCHARS_16BIT [
	^ 4
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakCHARS_8BIT [
	^ 2
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakCHARS_AUTO [
	^ 0
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakCHARS_UTF8 [
	^ 1
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakCHARS_WCHAR [
	^ 3
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakINITIALIZE_DONT_EXIT [
	^ 16r8000
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakINITIALIZE_PHONEME_EVENTS [
	^ 16r0001
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> espeakINITIALIZE_PHONEME_IPA [
	^ 16r0002
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> initialize [
	"reset me when startup"
	Smalltalk addToStartUpList: self.
	isInitialized := false
]

{ #category : #accessing }
EspeakLibrary class >> isInitialized [
	^ isInitialized
]

{ #category : #accessing }
EspeakLibrary class >> isInitialized: anObject [
	isInitialized := anObject
]

{ #category : #initialization }
EspeakLibrary class >> reset [
	<script>
	uniqueInstance := nil
]

{ #category : #'as yet unclassified' }
EspeakLibrary class >> startUp: isImageStarting [
	isImageStarting
		ifTrue: [ "only call during the start up"
			isInitialized := false.
			"might be call by the user"
			self reset ]
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_Cancel [
	"Stop immediately synthesis and audio output of the current text. When this
   function returns, the audio output is fully stopped and the synthesizer is ready to
   synthesize a new message.

   Return: EE_OK: operation achieved
	   EE_INTERNAL_ERROR."
	self
		ffiCall:
			'Espeak_ERROR espeak_Cancel()'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_Char: character [
	"Speak the name of the given character

   Return: EE_OK: operation achieved
           EE_BUFFER_FULL: the command can not be buffered;
             you may try after a while to call the function again.
	   EE_INTERNAL_ERROR."

	self ffiCall: 'espeak_ERROR espeak_Char(Character character)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_GetCurrentVoice [
	self ffiCall: 'Espeak_VOICE * espeak_GetCurrentVoice(void)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_InitializeWithOuput: output bufLength: buflength path: path andOptions: options [
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
EspeakLibrary >> espeak_IsPlaying [
"/* Returns true if audio is played, false otherwise.
*/"
	self ffiCall: 'Boolean espeak_IsPlaying(void)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_Key: key_name [
	"Speak the name of a keyboard key.
   If key_name is a single character, it speaks the name of the character.
   Otherwise, it speaks key_name as a text string.

   Return: EE_OK: operation achieved
           EE_BUFFER_FULL: the command can not be buffered;
             you may try after a while to call the function again.
	   EE_INTERNAL_ERROR."

	self ffiCall: 'Espeak_ERROR espeak_Key(String key_name)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_ListVoices: voice_spec [
	"Reads the voice files from espeak-data/voices and creates an array of espeak_VOICE pointers.
   The list is terminated by a NULL pointer

   If voice_spec is NULL then all voices are listed.
   If voice spec is given, then only the voices which are compatible with the voice_spec
   are listed, and they are listed in preference order."

	self ffiCall: 'Espeak_VOICE * * espeak_ListVoices(Espeak_VOICE * voice_spec)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_SetSynthCallback: aSynthCallback [
	self ffiCall: 'void espeak_SetSynthCallback(ESpeakSynthCallback aSynthCallback)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_SetVoiceByName: name [
"/* Searches for a voice with a matching 'name' field.  Language is not considered.
   'name' is a UTF8 string.

   Return: EE_OK: operation achieved
           EE_BUFFER_FULL: the command can not be buffered;
             you may try after a while to call the function again.
	   EE_INTERNAL_ERROR.
*/
"
	self ffiCall: 'Espeak_VOICE * espeak_SetVoiceByName(String name)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_Synchronize [
	"This function returns when all data have been spoken.
   Return: EE_OK: operation achieved
	   EE_INTERNAL_ERROR."

	self ffiCall: 'Espeak_ERROR espeak_Synchronize()'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_SynthText: text size: size position: position positionType: espeak_POSITION_TYPE endPosition: endPosition flags: flags uniqueIdentifier: uniqueIdentifier userData: userData [
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

{ #category : #'as yet unclassified' }
EspeakLibrary >> espeak_Terminate [
	"last function to be called."
	self ffiCall: 'Espeak_ERROR espeak_Terminate(void)'
]

{ #category : #'as yet unclassified' }
EspeakLibrary >> initialize [
	super initialize.
	self class isInitialized
		ifFalse: [ self
				espeak_InitializeWithOuput: Espeak_AUDIO_OUTPUT AUDIO_OUTPUT_PLAYBACK
				bufLength: 0
				path: nil
				andOptions: 0.


			cb := ESpeakSynthCallback on: [ :a :b :c | 0 ].
			self espeak_SetSynthCallback: cb.
			self class beInitialized ]
]

{ #category : #'accessing platform' }
EspeakLibrary >> unix64LibraryName [
	#('/usr/lib/i386-linux-gnu' '/usr/lib' '/usr/lib32') , ((OSEnvironment current at: 'LD_LIBRARY_PATH' ifAbsent: [ '' ]) substrings: ':')
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'libespeak.so'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate espeak library (libespeak.so). Please check if it installed on your system'
]

{ #category : #'accessing platform' }
EspeakLibrary >> win32LibraryName [
	((OSEnvironment current at: 'Path' ifAbsent: [ '' ]) substrings: ';'), {'C:\Program Files (x86)\eSpeak'}
		do: [ :path | 
			| libraryPath |
			libraryPath := path asFileReference / 'espeak_sapi.dll'.
			libraryPath exists ifTrue: [ ^ libraryPath fullName ] ].
	self error: 'Cannot locate vlc library. Please check if it installed on your system'
]
