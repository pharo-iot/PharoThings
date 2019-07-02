tests
testCreationPinReferenceByHeaderPosition
	
	| pinReference |
	pinReference := (2@10) gpioHeader.
	
	pinReference should beInstanceOf: PotGPIOHeaderPosition.
	pinReference row should equal: 2.
	pinReference row should equal: 10