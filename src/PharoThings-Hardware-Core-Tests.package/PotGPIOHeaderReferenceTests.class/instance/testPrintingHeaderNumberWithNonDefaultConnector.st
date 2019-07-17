tests
testPrintingHeaderNumberWithNonDefaultConnector
	
	| pinReference |
	pinReference := 23 gpioHeader @ #P1.
	
	pinReference printString should equal: '23 gpioHeader @ #P1'