controlling
connectTo: aBoard
	board := aBoard.
	self configureDefaultPeripherals.
	self syncPeripheralsWithBoard.
	self connect.