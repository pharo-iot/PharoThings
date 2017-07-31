controlling
connect
	gpioPin beDigitalInput.
	energyPin configureConnectedButton: self.
	
	stateProcess := [ self stateTrackingLoop ] 
		forkAt: Processor userBackgroundPriority named: self printString, ': state tracking'