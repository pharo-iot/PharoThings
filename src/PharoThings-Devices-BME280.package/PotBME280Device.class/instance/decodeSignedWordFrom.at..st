decoding
decodeSignedWordFrom: coeffs at: index
	| unsigned |
	unsigned := self decodeUnsignedWordFrom: coeffs at: index.
	^ unsigned > 32767
		ifTrue: [ unsigned - 65536 ]
		ifFalse: [ unsigned ]