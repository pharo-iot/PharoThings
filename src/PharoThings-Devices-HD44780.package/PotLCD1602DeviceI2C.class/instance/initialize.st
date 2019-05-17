initialization
initialize
	super initialize.
	displayControl := self hexArrayBitOrToNumber: {LCD_DISPLAYON}.
	displayFunction := self hexArrayBitOrToNumber: {LCD_4BITMODE. LCD_2LINE. LCD_5x8DOTS}.
	displayMode := self hexArrayBitOrToNumber: {LCD_ENTRYLEFT}