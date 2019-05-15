commands
setRightToLeft
	displayMode := displayMode bitAnd: (LCD_ENTRYLEFT bitInvert).
	self setDisplayMode