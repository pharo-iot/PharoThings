tests
testToggleDigitalValue

	pin ioMode: Mock new.
	pin stub readDigitalValue willReturn: 0.
	pin toggleDigitalValue.
	pin lastValue should be: 1.
	
	pin stub readDigitalValue willReturn: 1.
	pin toggleDigitalValue.
	
	pin lastValue should be: 0