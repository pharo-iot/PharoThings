data decoding
decodeSignedWordArrayFrom: coeffs at: index size: size
	| result word |
	result := Array new: size.
	1 to: size do: [ :i | 
		word := self decodeSignedWordFrom: coeffs at: index + ((i - 1) * 2).
		result at: i put: word ].
	^ result