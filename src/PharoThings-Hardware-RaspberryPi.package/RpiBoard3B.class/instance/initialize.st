initialization
initialize
	super initialize.
	
	self extendConnector: 'P1' with: { 
		0 gpio: PotSDAFunction. 1 gpio: PotSCLFunction. 
		5 gpio. 0 powerPin. 
		6 gpio. 12 gpio: PotPWMFunction. 
		13 gpio: PotPWMFunction. 0 powerPin. 
		19 gpio: PotMISOFunction. 16 gpio. 
		26 gpio. 20 gpio: PotMOSIFunction. 
		0 powerPin. 21 gpio: PotSCLKFunction.  
	 }