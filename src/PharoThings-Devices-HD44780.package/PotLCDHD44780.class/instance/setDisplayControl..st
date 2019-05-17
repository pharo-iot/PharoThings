initialization
setDisplayControl: anArray
	displayControl := displayControl bitOr: (self hexArrayBitOrToNumber: anArray).
	self writeCommand: (LCD_DISPLAYCONTROL bitOr: displayControl)