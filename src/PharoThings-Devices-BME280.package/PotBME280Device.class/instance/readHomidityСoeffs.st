controlling
readHomidityСoeffs

	| coeffs h1 |
	h1 := i2cConnection read8BitsAt: 16rA1.
	coeffs := i2cConnection read8BitsArray: 7 startingAt: 16rE1.
	
	^{h1. self decodeUnsignedWordFrom: coeffs at: 1}
		, (self decodeSignedWordArrayFrom: coeffs at: 3 size: 5)