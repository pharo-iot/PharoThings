initialization
initialize
	super initialize.
	
	self addNewConnector: 'ArduinoP' with: { 
		PotPower3dot3VPin new. 			PotPower5VPin new.
		PotGPIOPin id: 0 number: 0. 	PotGPIOPin id: 1 number: 1. 
		PotGPIOPin id: 2 number: 2. 	PotGPIOPin id: 3 number: 3. 
		PotGPIOPin id: 4 number: 4.    PotGPIOPin id: 5 number: 5. 
		PotGPIOPin id: 6 number: 6. 	PotGPIOPin id: 7 number: 7. 
		PotGPIOPin id: 8 number: 8.    PotGPIOPin id: 9 number: 9. 
		PotGPIOPin id: 10 number: 10. 	PotGPIOPin id: 11 number: 11. 
		PotGPIOPin id: 12 number: 12.    PotGPIOPin id: 13 number: 13. 
		
	 }