tests
testCreationPinFromId
	
	pin := 17 gpio.
	
	pin should beInstanceOf: PotBoardIOPin.
	pin id should equal: 17.