building
pinsIn: composite
	
	| table |
	table := composite fastTable
		display: [ connector rows ];
		intercellSpacing: 4@0;
		wantsAutomaticRefresh: true.
	self 
		addValueColumn: 1 to: table;
		addFunctionColumn: 1 to: table;				
		addNameColumn: 1 to: table;
		addHeaderColumn: 1 to: table;
		addHeaderColumn: 2 to: table;
		addNameColumn: 2 to: table;
		addFunctionColumn: 2 to: table;
		addValueColumn: 2 to: table