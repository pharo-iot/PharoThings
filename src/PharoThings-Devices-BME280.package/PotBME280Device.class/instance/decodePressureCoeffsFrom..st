data decoding
decodePressureCoeffsFrom: coeffsFrom16r88
	^{
		self decodeSignedWordAt: 1 from: coeffsFrom16r88. 
		self decodeUnsignedWordAt: 3 from: coeffsFrom16r88.
		self decodeUnsignedWordAt: 5 from: coeffsFrom16r88.
	}
