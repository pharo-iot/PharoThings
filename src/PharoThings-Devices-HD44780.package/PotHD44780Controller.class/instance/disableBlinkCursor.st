commands
disableBlinkCursor
	displayControl := displayControl bitAnd: (LCD_BLINKON bitInvert).
	self setDisplayControl