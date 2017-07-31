building
addHeaderColumn: columnNumber to: aTable
	
	| headerMorph |
	aTable 
		column: 'Pin#' 
		evaluated: [ :row | | pin |
			pin := row at: columnNumber.  
			headerMorph := pin headerNumber asString asMorph 
				backgroundColor: pin color;
				color: pin color contrastingColor;
				emphasis: TextEmphasis bold emphasisCode.
			(self pinCellMorphWith: headerMorph for: pin)
				color: pin color ] 
		width: 35
		