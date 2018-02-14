controlling
readHomidityCoeffs
	| coeffs h1 h2 h3 h4 h5 h6 |
	h1 := i2cConnection read8BitsAt: 16rA1.
	coeffs := i2cConnection read8BitsArray: 7 startingAt: 16rE1.
	h2 := self decodeSignedWordFrom: coeffs at: 1.
	h3 := (coeffs at: 3) bitAnd: 16rFF.
	h4 := (coeffs at: 4 * 16) + ((coeffs at: 5) bitAnd: 16rF).
	h4 > 32767 ifTrue: [ h4 := h4 - 65536].
	h5 := ((coeffs at: 5) / 16) + ((coeffs at: 6) * 16).
	h5 > 32767 ifTrue: [ h5 := h5 - 65536].
	h6 := coeffs at: 7.
	h6 > 127 ifTrue: [ h6 := h6 - 256].
	^{h1. h2. h3. h4. h5. h6}