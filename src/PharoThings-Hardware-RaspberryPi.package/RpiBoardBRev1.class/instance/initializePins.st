initialization
initializePins
	super initializePins.
	pinHeader ifNil: [ pinHeader := Dictionary new ].
	pinHeader
		add: 3 -> (PotSDAPin id: 0);
		add: 5 -> (PotSCLPin id: 1);
		add: 13 -> (PotGPIOPin id: 21 number: 2)