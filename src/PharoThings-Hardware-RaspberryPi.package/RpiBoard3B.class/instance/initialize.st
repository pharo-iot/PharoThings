initialization
initialize
	super initialize.
	self extendConnector: 'P1' with: { 
		self pin27. self pin28. 
		PotGPIOPin id: 5 number: 21. PotGroundPin new. 
		PotGPIOPin id: 6 number: 22. PotPwmGPIOPin id: 12 number: 26. 
		PotPwmGPIOPin id: 13 number: 23. PotGroundPin new. 
		self pin35. PotGPIOPin id: 16 number: 27.
		PotGPIOPin id: 26 number: 25. self pin38. 
		PotGroundPin new. self pin40.  
	 }