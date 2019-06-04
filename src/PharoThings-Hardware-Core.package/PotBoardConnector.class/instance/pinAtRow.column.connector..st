accessing
pinAtRow: rowIndex column: columnIndex connector: aString
	| position connector |
	connector := self board connectors detect: [ :each | each name = aString ].
	position := columnIndex @ rowIndex.
	^ connector pins detect: [ :each | each position = position ]