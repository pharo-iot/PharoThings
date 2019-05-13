initialization
initialize
	super initialize.
	displayControl :=  self hexArrayToNumber: {LCD_DISPLAYON. LCD_CURSOROFF. LCD_BLINKOFF}.
	displayFunction := self hexArrayToNumber: {LCD_4BITMODE. LCD_1LINE. LCD_2LINE . LCD_5x8DOTS}.
	displayMode := self hexArrayToNumber: {LCD_ENTRYLEFT. LCD_ENTRYSHIFTDECREMENT}