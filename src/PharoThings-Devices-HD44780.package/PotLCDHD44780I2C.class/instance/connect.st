controlling
connect
	i2cConnection := board connectToI2CDevice: 16r27 .
	self initializeRegisters