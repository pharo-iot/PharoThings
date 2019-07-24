tests
testRecoverStateWhenNoValueWasSetBefore

	[:resister :ioMode |
		pin pudResister: resister.
		pin ioMode: ioMode.
		pin value: nil.
		
		pin recoverState.
		
		board should receive setPUDResister: resister into: pin.
		ioMode should not receive recoverStateOf: board at: pin.
	] runWithMocks