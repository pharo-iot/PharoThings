*BaselineOfPharoThings
customLink: aString block: clickBlock
	aString ifEmpty: [ self errorEmptyString ].
	
	^ aString asText 
		addAttribute: (	TextAction new actOnClickBlock: clickBlock);
		addAttribute: (TextColor new color: self theme urlColor);
		yourself
