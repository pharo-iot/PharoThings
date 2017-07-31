building
addValueColumn: columnNumber to: aTable
	
	aTable 
		column: 'Value' 
		evaluated: [ :row | | pin |
			pin := row at: columnNumber.  
			self pinCellMorphWith: pin gtValueMorph for: pin] 
		width: 50