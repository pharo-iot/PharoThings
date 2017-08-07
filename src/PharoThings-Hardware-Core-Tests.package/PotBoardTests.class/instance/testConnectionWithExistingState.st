tests
testConnectionWithExistingState
	[:device :connector |
		board connectors: { connector }.
		board devices: { device }.
		
		board connectWithExistingState.
	
		[driver connectToBoard.
		device connect] should beDoneInOrder.
		connector should not receive recoverState.
	] runWithMocks