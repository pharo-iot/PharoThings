initialization
initializeRegisters
	self 
		"Initialize the display"
		writeCommand: 16r03;
		writeCommand: 16r03;
		writeCommand: 16r03;
		writeCommand: 16r02;
		"Write registers"
		setDisplayControl;
		setDisplayFunction;
		setDisplayMode;
		clearDisplay