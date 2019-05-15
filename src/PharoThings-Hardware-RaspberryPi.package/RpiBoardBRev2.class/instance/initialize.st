initialization
initialize
	super initialize.
	
	self addNewConnector: 'P5' with: { 
		PotPower5VPin new. PotPower3dot3VPin new. 
		PotGPIOPin id: 28 number: 8. PotGPIOPin id: 29 number: 9.
		PotGPIOPin id: 30 number: 10. PotGPIOPin id: 31 number: 11.
		PotGroundPin new. PotGroundPin new.
	}