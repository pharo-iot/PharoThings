building
addIdColumn: columnNumber to: aTable
	
	aTable	 
		column: 'Id' 
		evaluated: [ :row :i | 
			self pinCellMorphWith: (row at: columnNumber) printId for: (row at: columnNumber) ] 
		width: 30