commands
returnHome 
	self writeCommand: LCD_RETURNHOME.
	3 milliSeconds wait
	"this command takes a long time"