initialization
initialize
	super initialize.
	self
		displayControl: (Array with: LCD_DISPLAYON with: LCD_CURSOROFF with: LCD_BLINKOFF);
		displayFunction: (Array with: LCD_4BITMODE with: LCD_1LINE with: LCD_2LINE with: LCD_5x8DOTS);
		displayMode: (Array with: LCD_ENTRYLEFT with: LCD_ENTRYSHIFTDECREMENT)