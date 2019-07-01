tests
testCreationPinFromIdWithNumberAndFunction
	
	pin := 17 gpio: 2 fn: #pwm.
	
	pin should beInstanceOf: PotBoardIOPin.
	pin id should equal: 17.
	pin number should equal: 2.
	pin function should beInstanceOf: PotPWMFunction