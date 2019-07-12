tests
testPrintingString
	
	pin id: 100.
	pin function: PotPWMFunction new.
	
	pin printString should equal: 'a PotGPIO(100; PWM)'