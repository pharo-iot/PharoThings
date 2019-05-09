initialization
bitOrArray: anArray
	
	| hex hexOr |
	1 to: anArray size do: [ :i |  
		hex := (instructionDic at: (anArray at: i )) .
		hexOr ifNil: [ hexOr := hex] ifNotNil: [ hexOr := hexOr bitOr: hex ].
		 ].   
	^hexOr. 