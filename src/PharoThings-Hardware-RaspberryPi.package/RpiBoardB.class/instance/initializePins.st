initialization
initializePins
	pinHeader ifNil: [ pinHeader := Dictionary new ].
	pinHeader
		add: 8 -> (PotSerialPortTXDPin id: 14);
		add: 10 -> (PotSerialPortRXDPin id: 15);
		add: 19 -> (PotMOSIPin id: 10);
		add: 21 -> (PotMISOPin id: 9);
		add: 23 -> (PotSCLKPin id: 11);
		add: 24 -> (PotCEPin id: 8 number: 0);
		add: 26 -> (PotCEPin id: 7 number: 1)