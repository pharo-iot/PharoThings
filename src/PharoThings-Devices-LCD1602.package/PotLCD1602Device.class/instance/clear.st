controlling
clear
	self write8: '00000001' mode: 0.
	(Delay forSeconds: 0.003) wait.
	"3000 miliseconds waiting, clearing the lcd takes a long time"
		 
	