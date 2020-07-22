building
addHeaderColumn: columnNumber to: aTable
	
	| headerMorph |
	aTable 
		column: 'Pin#' 
		evaluated: [ :row | | pin |
			pin := row at: columnNumber.  
			headerMorph := pin headerNumber asString asMorph 
				backgroundColor: pin colorForPinout;
				color: pin colorForPinout veryMuchLighter;
				emphasis: TextEmphasis bold emphasisCode.
			(self pinCellMorphWith: headerMorph for: pin)
				color: pin colorForPinout ] 
		width: 35
		