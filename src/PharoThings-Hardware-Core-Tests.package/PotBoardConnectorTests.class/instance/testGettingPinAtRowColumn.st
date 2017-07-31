tests
testGettingPinAtRowColumn

	| pin1 pin2 pin3 |
	pin1 := PotBoardIOPin id: 10.
	pin2 := PotBoardIOPin id: 20.
	pin3 := PotBoardIOPin id: 30.
	connector pins: {  pin1. pin2. pin3 }.
	
	(connector pinAtRow: 1 column: 1) should be: pin1.
	(connector pinAtRow: 1 column: 2) should be: pin2.
	(connector pinAtRow: 2 column: 1) should be: pin3.