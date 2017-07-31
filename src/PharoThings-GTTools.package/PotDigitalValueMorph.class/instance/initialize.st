initialization
initialize
	super initialize.
	
	self 
		changeTableLayout;
		listDirection: #leftToRight;
"		listCentering: #center;"
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellInset: 2@1