initialization
initialize
	super initialize.
	
	self addNewConnector: 'ArduinoA' with:
		{3.3 powerPin. 5 powerPin},
		((5 to: 0 by: -1) collect: [ :id | id gpio ])