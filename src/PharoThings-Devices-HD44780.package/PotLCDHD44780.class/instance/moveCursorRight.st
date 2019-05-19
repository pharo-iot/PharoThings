commands
moveCursorRight
	self 
		writeCommand: (self hexArrayBitOrToNumber: {LCD_DISPLAYMOVE . LCD_CURSORSHIFT . LCD_MOVERIGHT})