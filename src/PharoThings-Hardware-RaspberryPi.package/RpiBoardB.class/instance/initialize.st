initialization
initialize
	super initialize.
	
	self addNewConnector: 'P1' with: { 
		PotPower3dot3VPin new. PotPower5VPin new.
		PotSDAPin id: self sdaPinId. PotPower5VPin new.
		PotSCLPin id: self sclPinId. PotGroundPin new.
		PotClockGPIOPin id: 4 number: 7. PotSerialPortTXDPin id: 14.
		PotGroundPin new. PotSerialPortRXDPin id: 15.
		PotGPIOPin id: 17 number: 0. PotPwmGPIOPin id: 18 number: 1.
		PotGPIOPin id: self gpio2PinId number: 2. PotGroundPin new.
		PotGPIOPin id: 22 number: 3. PotGPIOPin id: 23 number: 4.
		PotPower3dot3VPin new. PotGPIOPin id: 24 number: 5.
		PotMOSIPin id: 10. PotGroundPin new.
		PotMISOPin id: 9. PotGPIOPin id: 25 number: 6.
		PotSCLKPin id: 11. PotCEPin id: 8 number: 0.
		PotGroundPin new. PotCEPin id: 7 number: 1.
	 }