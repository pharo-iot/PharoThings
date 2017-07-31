instance creation
fromGroundTo: aGPIOPin
	^self new 
		energyPin: PotGroundPin new;
		gpioPin: aGPIOPin 