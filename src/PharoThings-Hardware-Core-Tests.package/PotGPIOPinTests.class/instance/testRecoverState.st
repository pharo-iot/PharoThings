tests
testRecoverState

	[:resister :ioMode |
		pin pudResister: resister.
		pin ioMode: ioMode.
		pin value: 1.
		
		pin recoverState.
		
		board should receive setPUDResister: resister into: pin.
		ioMode should receive recoverStateOf: board at: pin.
	] runWithMocks