controlling
connect
	self isConfigured ifFalse: [ board configurePotLCD: self ].
	self setPinsToDigitalOutput.
	self initializeRegisters