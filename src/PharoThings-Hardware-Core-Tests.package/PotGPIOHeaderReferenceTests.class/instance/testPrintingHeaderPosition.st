tests
testPrintingHeaderPosition
	
	| pinReference |
	pinReference := (3@2) gpioHeader.
	
	pinReference printString should equal: '(3@2) gpioHeader'