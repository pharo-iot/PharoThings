building
addNameColumn: columnNumber to: aTable
	
	aTable 
		column: 'Name' 
		evaluated: [ :row | | pin |
			pin := row at: columnNumber.  
			self pinCellMorphWith: pin gtNameMorph for: pin  ] 
		width: 100