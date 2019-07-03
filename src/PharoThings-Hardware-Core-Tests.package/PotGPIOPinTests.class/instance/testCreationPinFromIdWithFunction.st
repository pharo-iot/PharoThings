tests
testCreationPinFromIdWithFunction
	
	pin := 17 gpio: PotPWMFunction.
	
	pin should beInstanceOf: PotGPIO.
	pin id should equal: 17.
	pin function should beInstanceOf: PotPWMFunction