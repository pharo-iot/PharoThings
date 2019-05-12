initialization
initialize
	super initialize.
	self
		displayControl: (Array with: LCD_DISPLAYON);
		displayFunction: (Array with: LCD_4BITMODE with: LCD_2LINE with: LCD_5x8DOTS);
		displayMode: (Array with: LCD_ENTRYLEFT)
