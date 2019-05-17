initialization
setDisplayControl
	self writeCommand: (LCD_DISPLAYCONTROL bitOr: displayControl)