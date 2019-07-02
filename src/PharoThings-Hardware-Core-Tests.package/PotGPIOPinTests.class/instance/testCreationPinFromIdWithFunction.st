tests
testCreationPinFromIdWithFunction
	
	pin := 17 gpio: #PWM.
	
	pin should beInstanceOf: PotBoardIOPin.
	pin id should equal: 17.
	pin function should beInstanceOf: PotPWMFunction