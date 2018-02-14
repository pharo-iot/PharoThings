controlling
readTempAndPressureСoeffs

	| coeffs tempCoeffs pressureCoeffs |
	coeffs := i2cConnection read8BitsArray: 24 startingAt: 16r88.
	
	tempCoeffs := self decodeTempCoeffsFrom: coeffs.
	pressureCoeffs := self decodePressureCoeffsFrom: coeffs.

	^{tempCoeffs. pressureCoeffs}