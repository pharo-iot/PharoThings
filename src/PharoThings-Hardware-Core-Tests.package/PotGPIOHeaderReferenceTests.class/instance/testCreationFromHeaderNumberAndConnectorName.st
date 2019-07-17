tests
testCreationFromHeaderNumberAndConnectorName
	
	| pinReference |
	pinReference := 23 gpioHeader @ #P1.
	
	pinReference should beInstanceOf: PotGPIOHeaderNumber.
	pinReference value should equal: 23.
	pinReference connectorName should equal: #P1.