writing
showMessage: aString
	| charHex |
	1 to: aString size do: [ :i | 
		charHex := (aString at: i) asciiValue.
		(aString at: i) = $\
			ifTrue: [ self setCursorAtRow: 2 ]
			ifFalse: [ self writeText: charHex ] ]