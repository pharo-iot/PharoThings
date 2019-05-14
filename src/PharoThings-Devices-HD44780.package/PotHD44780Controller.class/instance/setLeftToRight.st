commands
setLeftToRight
	displayMode := displayMode bitOr: LCD_ENTRYLEFT.
	self setDisplayMode