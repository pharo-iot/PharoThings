commands
clearDisplay
	self writeCommand: LCD_CLEARDISPLAY.
	3 milliSeconds wait
	"waiting to clear the display"