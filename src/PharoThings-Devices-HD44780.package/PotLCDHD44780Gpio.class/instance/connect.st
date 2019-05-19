controlling
connect
	self isConfigured ifFalse: [ board configureComplexDevice: self ].
	self setPinsToDigitalOutput.
	self initializeRegisters