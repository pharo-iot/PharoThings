controlling
connectTo: aBoard
	board := aBoard.
	self syncPeripheralsWithBoard.
	self connect.