tests
testInstallDeviceConfiguredWithHeaderPositions

	| device |
	board addNewConnector: #TestConnectorId with: { 
		10 gpio. 12 gpio. 
		14 gpio. 16 gpio.
		18 gpio. 20 gpio}.
	
	device := PotDeviceExample pin1: (2@1) gpioHeader pin2: (3@2) gpioHeader.
	board installDevice: device.
	
	device pin1 id should equal: 14.
	device pin2 id should equal: 20