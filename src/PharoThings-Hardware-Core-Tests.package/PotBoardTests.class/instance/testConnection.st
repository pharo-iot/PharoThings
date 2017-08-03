tests
testConnection
	[:device :connector |
		board connectors: { connector }.
		board devices: { device }.
		
		board connect.
	
		[driver connectToBoard.
		connector recoverState.
		device connect] should beDoneInOrder
	] runWithMocks