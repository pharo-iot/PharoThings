controlling
readRegisters: anHex
	| h l value |
	h := i2cConnection read8BitsAt: anHex.
	l := i2cConnection read8BitsAt: anHex + 1.
	(h == 0 & l == 0)
		ifTrue: [ self wakeUpSensor. 1 milliSeconds wait.
			h := i2cConnection read8BitsAt: anHex.
			l := i2cConnection read8BitsAt: anHex + 1 ].
	value := (h bitShift: 8) + l.
	^ value