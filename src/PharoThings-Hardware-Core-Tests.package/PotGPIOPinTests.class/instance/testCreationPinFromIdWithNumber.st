tests
testCreationPinFromIdWithNumber
	
	pin := 17 gpio: 2.
	
	pin should beInstanceOf: PotBoardIOPin.
	pin id should equal: 17.
	pin number should equal: 2