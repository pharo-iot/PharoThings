tests
testCreationPinReferenceByHeaderNumber
	
	| pinReference |
	pinReference := 23 gpioHeader.
	
	pinReference should beInstanceOf: PotGPIOHeaderNumber.
	pinReference value should equal: 23.
	pinReference pointsToDefaultConnector should be: true