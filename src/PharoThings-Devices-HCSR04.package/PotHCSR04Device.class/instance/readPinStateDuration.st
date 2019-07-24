controlling
readPinStateDuration
	"The echo PIN will be active for the same length of time between sending and receiving the signal. It will be activated after receiving the sound wave back."
	| pulseStart pulseEnd |
	echoPin beDigitalInput; enablePullDownResister.
	[ echoPin value == 0 ] whileTrue: [ pulseStart := Time primUTCMicrosecondsClock ].
	[ echoPin value == 1 ] whileTrue: [ pulseEnd := Time primUTCMicrosecondsClock ].
	^ pulseEnd - pulseStart