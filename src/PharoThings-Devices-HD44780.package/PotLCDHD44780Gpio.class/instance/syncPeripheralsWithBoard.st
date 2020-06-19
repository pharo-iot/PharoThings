controlling
syncPeripheralsWithBoard
	super syncPeripheralsWithBoard.
	dataPins := dataPins collect: [:each | each correspondingPinIn: board]