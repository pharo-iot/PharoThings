initialization
initialize
	super initialize.
	
	self addNewConnector: 'ArduinoP' with: 
		{3.3 powerPin. 5 powerPin},
		((0 to: 13) collect: [ :id | id gpio ])