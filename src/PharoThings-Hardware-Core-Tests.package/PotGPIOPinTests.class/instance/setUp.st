running
setUp
	super setUp.
	
	board := Mock new.
	pin := PotGPIO id: 10.
	pin board: board