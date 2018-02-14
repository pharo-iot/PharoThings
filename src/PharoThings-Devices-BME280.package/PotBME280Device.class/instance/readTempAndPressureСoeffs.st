controlling
readTempAndPressureСoeffs

	| coeffs tempCoeffs pressureCoeffs |
	coeffs := i2cConnection read8BitsArray: 24 startingAt: 16r88.
	
	tempCoeffs :=  {self decodeSignedWordFrom: coeffs at: 1}
		, (self decodeSignedWordArrayFrom: coeffs at: 3 size: 2).
	pressureCoeffs := {self decodeSignedWordFrom: coeffs at: 1}
		, self decodeSignedWordArrayFrom: coeffs at: 7 size: 8.

	^{tempCoeffs. pressureCoeffs}