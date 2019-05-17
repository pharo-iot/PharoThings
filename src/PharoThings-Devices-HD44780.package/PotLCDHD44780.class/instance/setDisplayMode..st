initialization
setDisplayMode: anArray
	displayMode := displayMode bitOr: (self hexArrayBitOrToNumber: anArray).
	self writeCommand: (LCD_ENTRYMODESET bitOr: displayMode)