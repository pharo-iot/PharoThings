commands
disableDisplay
	self setDisplayControl: {displayControl bitAnd: (LCD_DISPLAYON invert)}