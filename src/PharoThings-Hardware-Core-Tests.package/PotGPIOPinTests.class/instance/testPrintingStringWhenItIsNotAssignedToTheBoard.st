tests
testPrintingStringWhenItIsNotAssignedToTheBoard
	
	pin id: 100.
	pin function: PotPWMFunction new.
	pin board: nil.
	
	pin printString should equal: 'a PotGPIO(Unassigned; 100; PWM)'