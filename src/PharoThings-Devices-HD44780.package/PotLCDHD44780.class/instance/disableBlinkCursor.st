commands
disableBlinkCursor
	self
		setDisplayControl: (displayControl bitAnd: LCD_BLINKON bitInvert)