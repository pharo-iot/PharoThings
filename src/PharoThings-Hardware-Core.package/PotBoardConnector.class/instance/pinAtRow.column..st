accessing
pinAtRow: rowIndex column: columnIndex
	| position |
	position := columnIndex @ rowIndex.
	^pins detect: [ :each | each position = position ]