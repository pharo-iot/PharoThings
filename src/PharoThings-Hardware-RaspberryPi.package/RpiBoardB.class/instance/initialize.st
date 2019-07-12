initialization
initialize
	super initialize.
	
	self addNewConnector: 'P1' with: { 
		3.3 powerPin. 5 powerPin.
		self sdaPinId gpio: PotSDAFunction. 5 powerPin.
		self sclPinId gpio: PotSCLFunction. 0 powerPin.
		4 gpio: PotClockFunction. 14 gpio: PotSerialPortTXDFunction.
		0 powerPin. 15 gpio: PotSerialPortRXDFunction.
		17 gpio. 18 gpio: PotPWMFunction.
		self gpio2PinId gpio. 0 powerPin.
		22 gpio. 23 gpio.
		3.3 powerPin. 24 gpio.
		10 gpio: PotMOSIFunction. 0 powerPin.
		9 gpio: PotMISOFunction. 25 gpio.
		11 gpio: PotSCLKFunction. 8 gpio: PotCEFunction.
		0 powerPin. 7 gpio: PotCEFunction.
	 }