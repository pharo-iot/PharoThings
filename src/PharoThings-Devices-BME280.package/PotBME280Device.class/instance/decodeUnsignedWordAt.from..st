data decoding
decodeUnsignedWordAt: index from: coeffs
	^(coeffs at: index + 1) * 256 + (coeffs at: index)