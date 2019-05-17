initialization
setDisplayMode: anHex
	self writeCommand: (LCD_ENTRYMODESET bitOr: anHex).
	1 milliSeconds wait