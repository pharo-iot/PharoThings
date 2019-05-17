commands
enableBlinkCursor
	self 
		setDisplayControl: (displayControl bitOr: LCD_BLINKON)