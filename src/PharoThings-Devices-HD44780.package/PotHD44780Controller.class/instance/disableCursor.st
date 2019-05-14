commands
disableCursor
	displayControl := displayControl bitAnd: (LCD_CURSORON bitInvert).
	self setDisplayControl