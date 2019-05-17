commands
enableBlinkCursor
	displayControl := displayControl bitOr: LCD_BLINKON.
	self setDisplayControl