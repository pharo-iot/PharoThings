tests
testCreationPinReferenceByHeaderPosition
	
	| pinReference |
	pinReference := (10@2) gpioHeader.
	
	pinReference should beInstanceOf: PotGPIOHeaderPosition.
	pinReference row should equal: 10.
	pinReference column should equal: 2