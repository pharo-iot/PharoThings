controlling
readPinStateDuration
	| pulseStart pulseEnd |
	echoPin beDigitalInput; enablePullDownResister.
	[ echoPin value == 0 ] whileTrue: [ pulseStart := Time primUTCMicrosecondsClock ].
	[ echoPin value == 1 ] whileTrue: [ pulseEnd := Time primUTCMicrosecondsClock ].
	^ pulseEnd - pulseStart