building
compose
	self title: 'Pins'.
	self tabulator with: [ :browser |
		browser 
			row: #pins; 
			row: #evaluator.
		browser transmit 
			to: #pins; 
			andShow: [:a | self pinsIn: a ].
		browser transmit 
			to: #evaluator; 
			andShow: [:a | self evaluatorIn: a ].
		browser transmit 
			from: #pins; 
			toOutsidePort: #selection.
		browser transmit 
			from: #evaluator; 
			toOutsidePort: #selection ].
	self wantsAutomaticRefresh: true