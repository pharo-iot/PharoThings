tests
testRecoverState

	[:pin1 :pin2 |
		connector pins: {  pin1. pin2 }.
		
		connector recoverState.
		
		pin1 should receive recoverState.
		pin2 should receive recoverState
	] runWithMocks 