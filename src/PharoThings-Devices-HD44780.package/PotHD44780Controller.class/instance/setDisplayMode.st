initialization
setDisplayMode
	self writeCommand: (LCD_DISPLAYCONTROL bitOr: displayMode)