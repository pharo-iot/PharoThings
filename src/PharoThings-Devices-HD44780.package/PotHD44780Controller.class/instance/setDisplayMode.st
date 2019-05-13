initialization
setDisplayMode
	self writeCommand: (LCD_ENTRYMODESET bitOr: displayMode)