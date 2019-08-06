controlling
readAccelerometer
	| accX accY accZ |
	accX := self readRegisters2C: 16r3b.
	accY := self readRegisters2C: 16r3d.
	accZ := self readRegisters2C: 16r3f.
	^ { accX . accY . accZ }