data decoding
decodeTempCoeffsFrom: coeffsFrom16r88
	^ {self decodeSignedWordFrom: coeffsFrom16r88 at: 1}
		, (self decodeUnsignedWordArrayFrom: coeffsFrom16r88 at: 3 size: 2)