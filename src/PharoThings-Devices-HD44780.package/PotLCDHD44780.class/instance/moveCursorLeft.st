commands
moveCursorLeft
	self writeCommand: (self hexArrayToNumber: {LCD_DISPLAYMOVE . LCD_CURSORSHIFT . LCD_MOVELEFT})