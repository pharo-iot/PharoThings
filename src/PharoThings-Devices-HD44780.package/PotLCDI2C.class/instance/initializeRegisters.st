initialization
initializeRegisters
	self 
		"Initialize the display"
		writeCommand: 16r03;
		writeCommand: 16r03;
		writeCommand: 16r03;
		writeCommand: 16r02;
		"Write registers"
		writeCommand: displayControl;
		writeCommand: displayFunction;
		writeCommand: displayMode;
		clearDisplay