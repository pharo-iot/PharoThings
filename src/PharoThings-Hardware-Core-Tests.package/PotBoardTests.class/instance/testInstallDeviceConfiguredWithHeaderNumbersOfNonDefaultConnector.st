tests
testInstallDeviceConfiguredWithHeaderNumbersOfNonDefaultConnector

	| device |
	board addNewConnector: #TestConnector1 with: { 10 gpio. 12 gpio. 14 gpio. 16 gpio}.
	board addNewConnector: #TestConnector2 with: { 100 gpio. 120 gpio. 140 gpio. 160 gpio}.
	
	device := PotDeviceExample pin1: 1 gpioHeader @ #TestConnector2 pin2: 3 gpioHeader @ #TestConnector2.
	board installDevice: device.
	
	device pin1 id should equal: 100.
	device pin2 id should equal: 140