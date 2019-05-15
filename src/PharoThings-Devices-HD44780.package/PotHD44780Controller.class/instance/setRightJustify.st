commands
setRightJustify
	displayMode := displayMode bitOr: LCD_ENTRYSHIFTINCREMENT.
	self setDisplayMode