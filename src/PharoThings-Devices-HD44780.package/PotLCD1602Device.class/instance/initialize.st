initialization
initialize
	super initialize.
	displayControl := self hexArrayBitOrToNumber:{LCD_DISPLAYON.LCD_CURSOROFF.LCD_BLINKOFF}.
	displayFunction := self hexArrayBitOrToNumber:{LCD_4BITMODE.LCD_1LINE.LCD_2LINE.LCD_5x8DOTS}.
	displayMode := self hexArrayBitOrToNumber:{LCD_ENTRYLEFT.LCD_ENTRYSHIFTDECREMENT}