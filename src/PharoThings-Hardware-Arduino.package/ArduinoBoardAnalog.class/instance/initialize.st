initialization
initialize
	super initialize.
	
	self addNewConnector: 'ArduinoA' with: { 
		PotPower3dot3VPin new. PotPower5VPin new.
		PotGPIOPin id:5 number: 5. 
		PotGPIOPin id:4 number: 4.
		PotGPIOPin id:3 number: 3.
		PotGPIOPin id:2 number: 2.
		PotGPIOPin id:1 number: 1.
		PotGPIOPin id:0 number: 0.
	 }