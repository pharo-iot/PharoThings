initialization
setDisplayFunction: anHex
	self writeCommand: (LCD_FUNCTIONSET bitOr: anHex).
	1 milliSeconds wait