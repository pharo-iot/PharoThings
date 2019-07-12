tests
testInstallDeviceConfiguredWithUnassignedGPIOs

	| device |
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio. 14 gpio. 16 gpio}.
	
	device := PotDeviceExample pin1: 14 gpio pin2: 12 gpio.
	board installDevice: device.
	
	device pin1 should be: (board pinWithId: 14).
	device pin2 should be: (board pinWithId: 12)