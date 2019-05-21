commands
readDistance
	self sendPulse.
	^ (self readPinStateDuration * 34300 / 2 / 1000000) asFloat round: 1