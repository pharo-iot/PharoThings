initialization
initializeRegisters
	self
		"Initialize the display"
		writeCommand: 16r33;
		writeCommand: 16r32;
		"Write registers"
		writeCommand: displayControl;
		writeCommand: displayFunction;
		writeCommand: displayMode;
		clearDisplay