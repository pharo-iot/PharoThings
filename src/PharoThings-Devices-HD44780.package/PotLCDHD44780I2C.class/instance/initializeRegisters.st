initialization
initializeRegisters
	self 
		"Initialize the display"
		writeCommand: 16r03;
		writeCommand: 16r03;
		writeCommand: 16r03;
		writeCommand: 16r02;
		"Write registers"
		setDisplayControl: {0};
		setDisplayFunction: {0};
		setDisplayMode: {0} ;
		clearDisplay