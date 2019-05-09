commands
clearDisplay
	self writeCommand: (instructionDic at: #LCD_CLEARDISPLAY).
	(Delay forSeconds: 0.003) wait
	"3 miliseconds waiting to clear the display"