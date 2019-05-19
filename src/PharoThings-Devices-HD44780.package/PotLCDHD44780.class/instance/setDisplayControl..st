initialization
setDisplayControl: anHex
	self writeCommand: (LCD_DISPLAYCONTROL bitOr: anHex).
	1 milliSeconds wait