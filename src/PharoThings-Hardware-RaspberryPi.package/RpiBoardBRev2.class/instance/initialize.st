initialization
initialize
	super initialize.
	
	self addNewConnector: 'P5' with: { 
		5 powerPin. 3.3 powerPin. 
		28 gpio. 29 gpio.
		30 gpio. 31 gpio.
		0 powerPin. 0 powerPin.
	}