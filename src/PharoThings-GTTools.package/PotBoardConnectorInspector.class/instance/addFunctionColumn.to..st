building
addFunctionColumn: columnNumber to: aTable
	
	aTable 
		column: 'Function' 
		evaluated: [ :row | | pin |
			pin := row at: columnNumber.  
			self pinCellMorphWith: pin gtFunctionMorph for: pin  ] 
		width: 65