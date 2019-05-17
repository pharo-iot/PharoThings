commands
disableDisplay
	displayControl := displayControl bitAnd: (LCD_DISPLAYON invert).
	self setDisplayControl