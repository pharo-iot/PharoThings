commands
enableCursor
	displayControl := displayControl bitOr: LCD_CURSORON.
	self setDisplayControl