initialization
initialize
	super initialize.
	self addNewConnector: 'P1' with: { 
		PotPower3dot3VPin new. PotPower5VPin new.
		self pin3. PotPower5VPin new.
		self pin5. PotGroundPin new.
		PotClockGPIOPin id: 4 number: 7. self pin8.
		PotGroundPin new. self pin10.
		PotGPIOPin id: 17 number: 0. PotPwmGPIOPin id: 18 number: 1.
		self pin13. PotGroundPin new.
		PotGPIOPin id: 22 number: 3. PotGPIOPin id: 23 number: 4.
		PotPower3dot3VPin new. PotGPIOPin id: 24 number: 5.
		self pin19. PotGroundPin new.
		self pin21. PotGPIOPin id: 25 number: 6.
		self pin23. self pin24.
		PotGroundPin new. self pin26.
	 }