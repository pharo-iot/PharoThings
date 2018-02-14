data decoding
decodeUnsignedWordArrayFrom: coeffs startingAt: index size: size
	| result word |
	result := Array new: size.
	
	1 to: size do: [ :i | 
		word := self decodeUnsignedWordAt: index + ((i - 1) * 2) from: coeffs.
		result at: i put: word].
	
	^result