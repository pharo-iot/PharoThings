data decoding
decodeSignedWordAt: index from: coeffs
	| unsigned |
	unsigned := self decodeUnsignedWordAt: index from: coeffs.
	^unsigned > 32767 
		ifTrue: [ unsigned - 65536]
		ifFalse: [ unsigned ]