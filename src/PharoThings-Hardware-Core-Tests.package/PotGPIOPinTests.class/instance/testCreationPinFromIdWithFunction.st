tests
testCreationPinFromIdWithFunction
	
	pin := 17 gpio: PotPWMFunction.
	
	pin should beInstanceOf: PotBoardIOPin.
	pin id should equal: 17.
	pin function should beInstanceOf: PotPWMFunction