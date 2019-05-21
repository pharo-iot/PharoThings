initialization
connect
	self isConfigured ifFalse: [ board configureComplexDevice: self ]