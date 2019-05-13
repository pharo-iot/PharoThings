initialization
initialize
	super initialize.
	self
		displayControl: {LCD_DISPLAYON};
		displayFunction: {LCD_4BITMODE . LCD_2LINE . LCD_5x8DOTS};
		displayMode: {LCD_ENTRYLEFT}