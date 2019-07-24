tests
testInstallDeviceConfiguredWithUnexistingHeaderNumbers

	| device |
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio. }.
	
	device := PotDeviceExample pin1: 1 gpioHeader pin2: 3 gpioHeader.
	
	[board installDevice: device] should fail.
		
	board devices should not include: device.
	device should not be isConnected