initialization
initialize
	super initialize.
	
	function := PotBasicIOFunction new.
	ioMode := PotUnknownIOPinMode new.
	pudResister := PotNoPinResistor 