initialization
initializePins
	super initializePins.
	pinHeader ifNil: [ pinHeader := Dictionary new ].
	pinHeader
		add: 3 -> (PotSDAPin id: 2);
		add: 5 -> (PotSCLPin id: 3);
		add: 13 -> (PotGPIOPin id: 27 number: 2);
		add: 27 -> (PotSDAPin id: 0);
		add: 28 -> (PotSCLPin id: 1);
		add: 35 -> (PotMISOPin id: 19);
		add: 38 -> (PotMOSIPin id: 20);
		add: 40 -> (PotSCLKPin id: 21)