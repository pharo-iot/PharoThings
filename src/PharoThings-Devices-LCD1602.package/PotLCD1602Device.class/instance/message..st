controlling
message: anObject
	|bin|
	1 to: anObject size do: [ :i | 		
		bin := (anObject at: i) codePoint printPaddedWith: $0 to: 8 base: 2. 
		(anObject at: i) = $\ 
			ifTrue: [ self setCursor: 2. ] 
			ifFalse: [ self write8: bin mode: 1. ].
		]