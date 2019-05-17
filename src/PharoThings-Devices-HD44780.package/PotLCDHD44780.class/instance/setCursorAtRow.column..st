commands
setCursorAtRow: row column: column  
	self writeCommand:
		(LCD_SETDDRAMADDR bitOr: (column -1) + (LCD_ROW_OFFSETS at:row))