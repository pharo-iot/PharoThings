controlling
recoverState
	super recoverState.
	
	board setPUDResister: pudResister into: self.
	lastValue ifNil: [ ^self ].
	ioMode recoverStateOf: board at: self