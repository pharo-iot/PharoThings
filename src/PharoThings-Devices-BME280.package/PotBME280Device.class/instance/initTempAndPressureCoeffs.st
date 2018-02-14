controlling
initTempAndPressureCoeffs

	| data |
	data := i2cConnection read8BitsArray: 24 startingAt: 16r88.
	
	tCoeffs :=  {self decodeSignedWordFrom: data at: 1}
		, (self decodeSignedWordArrayFrom: data at: 3 size: 2).
	pCoeffs := {self decodeSignedWordFrom: data at: 7}
		, (self decodeSignedWordArrayFrom: data at: 9 size: 8)