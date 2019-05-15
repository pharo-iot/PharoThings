controlling
home
	self write8: '00000010' mode: 0.
	(Delay forSeconds: 0.003) wait.
	"3000 miliseconds waiting, this command takes a long time"