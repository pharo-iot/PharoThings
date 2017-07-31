tests
testGettingRows

	| pin1 pin2 pin3 rows |
	pin1 := PotBoardPin new.
	pin2 := PotBoardPin new.
	pin3 := PotBoardPin new.
	connector pins: {  pin1. pin2. pin3 }.
	
	rows := connector rows.
	rows should haveSize: 2.
	rows first should equalInOrder: {pin1. pin2}.
	rows last should equalInOrder: {pin3}.