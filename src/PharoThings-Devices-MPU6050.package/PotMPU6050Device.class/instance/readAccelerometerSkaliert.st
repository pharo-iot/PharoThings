controlling
readAccelerometerSkaliert
	| acc accX accY accZ |
	acc := self readAccelerometer.
	accX := ((acc at: 1)/16384) asFloat round: 6.
	accY := ((acc at: 2)/16384) asFloat round: 6.
	accZ := ((acc at: 3)/16384) asFloat round: 6.
	^ { accX . accY . accZ }