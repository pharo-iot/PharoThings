data decoding
decodePressureCoeffsFrom: coeffsFrom16r88
	^ {(self decodeSignedWordFrom: coeffsFrom16r88 at: 1).
	(self decodeUnsignedWordFrom: coeffsFrom16r88 at: 3).
	(self decodeUnsignedWordFrom: coeffsFrom16r88 at: 5)}