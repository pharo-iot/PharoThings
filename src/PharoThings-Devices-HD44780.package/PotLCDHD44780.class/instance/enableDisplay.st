commands
enableDisplay
	displayControl := displayControl bitOr: LCD_DISPLAYON.
	self setDisplayControl