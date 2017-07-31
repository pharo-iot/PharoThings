tests
testSettingPins

	| pin1 pin2 pin3 |
	pin1 := PotBoardPin new.
	pin2 := PotBoardPin new.
	pin3 := PotBoardPin new.
	connector pins: {  pin1. pin2. pin3 }.
	
	pin1 board should be: board.
	pin1 position should equal: 1@1.
	pin2 board should be: board.
	pin2 position should equal: 2@1.
	pin3 board should be: board.
	pin3 position should equal: 1@2.