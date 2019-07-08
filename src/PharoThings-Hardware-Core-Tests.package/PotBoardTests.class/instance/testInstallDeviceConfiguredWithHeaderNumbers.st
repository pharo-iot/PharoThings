tests
testInstallDeviceConfiguredWithHeaderNumbers

	| device |
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio. 14 gpio. 16 gpio}.
	
	device := PotDeviceExample pin1: 1 gpioHeader pin2: 3 gpioHeader.
	board installDevice: device.
	
	device pin1 id should equal: 10.
	device pin2 id should equal: 14