initialization
initialize
	super initialize.
	displayControl := self hexArrayToNumber: {LCD_DISPLAYON}.
	displayFunction := self hexArrayToNumber: {LCD_4BITMODE. LCD_2LINE. LCD_5x8DOTS}.
	displayMode := self hexArrayToNumber: {LCD_ENTRYLEFT}