tests
testRecoverState

	[:resister :ioMode |
		pin pudResister: resister.
		pin ioMode: ioMode.
		
		pin recoverState.
		
		board setPUDResister: resister into: pin.
		ioMode recoverStateOf: board at: pin.
	] runWithMocks