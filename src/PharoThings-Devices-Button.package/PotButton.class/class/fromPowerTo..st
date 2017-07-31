instance creation
fromPowerTo: aGPIOPin
	^self new 
		energyPin: PotPower3dot3VPin new;
		gpioPin: aGPIOPin 