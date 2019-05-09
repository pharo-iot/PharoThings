commands
returnHome 
	self writeCommand: (instructionDic at: #LCD_RETURNHOME).
	(Delay forSeconds: 0.003) wait.
	"3 miliseconds waiting, this command takes a long time"