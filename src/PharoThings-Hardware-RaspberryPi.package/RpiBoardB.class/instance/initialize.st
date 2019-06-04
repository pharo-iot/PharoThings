initialization
initialize
	super initialize.
	self initializePins.
	self addNewConnector: 'P1' with: { 
		PotPower3dot3VPin new. PotPower5VPin new.
		pinHeader at: 3. PotPower5VPin new.
		pinHeader at: 5. PotGroundPin new.
		PotClockGPIOPin id: 4 number: 7. pinHeader at: 8.
		PotGroundPin new. pinHeader at: 10.
		PotGPIOPin id: 17 number: 0. PotPwmGPIOPin id: 18 number: 1.
		pinHeader at: 13. PotGroundPin new.
		PotGPIOPin id: 22 number: 3. PotGPIOPin id: 23 number: 4.
		PotPower3dot3VPin new. PotGPIOPin id: 24 number: 5.
		pinHeader at: 19. PotGroundPin new.
		pinHeader at: 21. PotGPIOPin id: 25 number: 6.
		pinHeader at: 23. pinHeader at: 24.
		PotGroundPin new. pinHeader at: 26.
	 }