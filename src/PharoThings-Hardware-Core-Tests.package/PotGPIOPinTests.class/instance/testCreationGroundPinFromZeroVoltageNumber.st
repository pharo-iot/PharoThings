tests
testCreationGroundPinFromZeroVoltageNumber
	
	pin := 0 powerPin
	
	pin should beInstanceOf: PotGroundPin 