initialization
initializeRegisters
	self
		"Initialize the display"
		writeCommand: 16r33;
		writeCommand: 16r32;
		"Write registers"
		setDisplayControl: {0};
		setDisplayFunction: {0};
		setDisplayMode: {0} ;
		clearDisplay