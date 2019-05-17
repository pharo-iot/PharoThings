commands
setLeftJustify
	displayMode := displayMode bitAnd: (LCD_ENTRYSHIFTINCREMENT bitInvert).
	self setDisplayMode