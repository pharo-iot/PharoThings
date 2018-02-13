controlling
connect
	"The code is copied from Python:
	https://github.com/ControlEverythingCommunity/MCP9808/blob/master/Python/MCP9808.py"
	super connect.
	
	"Select configuration register, 0x01(1)
		0x0000(00)	Continuous conversion mode, Power-up default"
	i2cConnection write16BitsAt: 16r01 data: #[16r00 16r00] asInteger.
	
	"Select resolution rgister, 0x08(8)
		0x03(03)	Resolution = +0.0625 / C"
	i2cConnection write8BitsAt: 16r08 data: 16r03.