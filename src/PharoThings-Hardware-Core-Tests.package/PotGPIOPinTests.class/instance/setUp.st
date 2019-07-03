running
setUp
	super setUp.
	
	board := Mock new.
	pin := PotGPIO id: 10 number: 2.
	pin board: board