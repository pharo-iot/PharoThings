running
setUp
	super setUp.
	
	board := Mock new.
	pin := PotBoardIOPin id: 10 number: 2.
	pin board: board