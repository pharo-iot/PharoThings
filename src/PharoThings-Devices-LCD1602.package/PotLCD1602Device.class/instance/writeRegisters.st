controlling
writeRegisters
	"initialize the display"
	self write8: '00110011' mode: 0. 
	self write8: '00110010' mode: 0. 
	"initialize display control, function, and mode registers"
	self write8: '00001100' mode: 0. "write display control"
	self write8: '00101000' mode: 0. "write function"
	self write8: '00000110' mode: 0. "wirte display mode"