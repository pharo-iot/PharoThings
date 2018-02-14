controlling
setUpReading


	"Select control humidity register, 0xF2(242)
		0x01(01)	Humidity Oversampling = 1"
	i2cConnection write8BitsAt: 16rF2 data: 16r01.
	
	"Select Control measurement register, 0xF4(244)
		0x27(39)	Pressure and Temperature Oversampling rate = 1
					Normal mode"
	i2cConnection write8BitsAt: 16rF4 data: 16r27.

	" Select Configuration register, 0xF5(245)
		0xA0(00)	Stand_by time = 1000 ms"
	i2cConnection write8BitsAt: 16rF5 data: 16rA0