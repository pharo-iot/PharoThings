initialization
initialize
	super initialize.
	self extendConnector: 'P1' with: { 
		pinHeader at: 27. pinHeader at: 28. 
		PotGPIOPin id: 5 number: 21. PotGroundPin new. 
		PotGPIOPin id: 6 number: 22. PotPwmGPIOPin id: 12 number: 26. 
		PotPwmGPIOPin id: 13 number: 23. PotGroundPin new. 
		pinHeader at: 35. PotGPIOPin id: 16 number: 27.
		PotGPIOPin id: 26 number: 25. pinHeader at: 38. 
		PotGroundPin new. pinHeader at: 40.  
	 }