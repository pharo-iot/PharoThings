commands
setCursorAtRow: anInteger col: anInteger2
	self writeCommand:
		((instructionDic at: #LCD_SETDDRAMADDR)
			bitOr: (anInteger2 -1) + ((instructionDic at: #LCD_ROW_OFFSETS) at:anInteger))