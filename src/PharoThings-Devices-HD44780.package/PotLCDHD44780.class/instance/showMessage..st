writing
showMessage: aString
	| i |
	i := 1.
	aString
		do: [ :char | 
			char = Character cr
				ifTrue: [ self setCursorAtRow: (i := i + 1) ]
				ifFalse: [ self writeCharacter: char asciiValue ] ]