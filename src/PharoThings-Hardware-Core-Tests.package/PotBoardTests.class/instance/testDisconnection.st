tests
testDisconnection

	[:device1 :device2 |
		board devices: { device1. device2 }.
		
		board disconnect.
	
		[device1 disconnect.
		device2 disconnect.
		driver disconnectFromBoard] should beDoneInOrder
	] runWithMocks