initialization
setDisplayFunction: anArray
	displayFunction := displayFunction bitOr: (self hexArrayBitOrToNumber: anArray).
	self writeCommand: (LCD_FUNCTIONSET bitOr: displayFunction)