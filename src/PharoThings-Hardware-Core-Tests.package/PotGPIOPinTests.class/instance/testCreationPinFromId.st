tests
testCreationPinFromId
	
	pin := 17 gpio.
	
	pin should beInstanceOf: PotGPIO.
	pin id should equal: 17.