tests
testPrintingHeaderNumber
	
	| pinReference |
	pinReference := 23 gpioHeader.
	
	pinReference printString should equal: '23 gpioHeader'