controlling
checkState

	| currentState |
	currentState := gpioPin value.
	lastState ~= currentState ifTrue: [ 
		lastState := currentState.
		self announceState ]