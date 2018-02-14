decoding
decodeUnsignedWordFrom: coeffs at: index
	^(coeffs at: index + 1) * 256 + (coeffs at: index)