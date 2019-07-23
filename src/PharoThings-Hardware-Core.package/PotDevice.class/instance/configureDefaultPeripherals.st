initialization
configureDefaultPeripherals
   "Subclasses can provide example configuration of pin variables.
   So users will be able simply create device using #new (PotLCD new)
   and see in the board inspector how to connect it in the real world (with real wires)"
	self subclassResponsibility