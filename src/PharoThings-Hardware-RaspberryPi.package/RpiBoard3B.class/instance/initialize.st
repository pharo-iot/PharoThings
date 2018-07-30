initialization
initialize
	super initialize.

	self addNewConnector: 'P1' with: { 
		PotPower3dot3VPin new. PotPower5VPin new.
		PotSDAPin id: 2. PotPower5VPin new.
		PotSCLPin id: 3. PotGroundPin new.
		PotClockGPIOPin id: 4 number: 7. PotSerialPortTXDPin id: 14.
		PotGroundPin new. PotSerialPortRXDPin id: 15.
		PotGPIOPin id: 17 number: 0. PotPwmGPIOPin id: 18 number: 1.
		PotGPIOPin id: 27 number: 2. PotGroundPin new.
		PotGPIOPin id: 22 number: 3. PotGPIOPin id: 23 number: 4.
		PotPower3dot3VPin new. PotGPIOPin id: 24 number: 5.
		PotMOSIPin id: 10. PotGroundPin new.
		PotMISOPin id: 9. PotGPIOPin id: 25 number: 6.
		PotSCLKPin id: 11. PotCEPin id: 8 number: 0.
		PotGroundPin new. PotCEPin id: 7 number: 1.				
		
		PotSDAPin id: 0.PotSCLPin id: 1. 
		PotGPIOPin id: 5 number: 21. PotGroundPin new. 
		PotGPIOPin id: 6 number: 22. PotPwmGPIOPin id: 12 number: 26. 
		PotPwmGPIOPin id: 13 number: 23. PotGroundPin new. 
		PotMISOPin id: 19. PotGPIOPin id: 16 number: 27. 
		PotGPIOPin id: 26 number: 25. PotMOSIPin id: 20. 
		PotGroundPin new. PotSCLKPin id: 21.  
	 }