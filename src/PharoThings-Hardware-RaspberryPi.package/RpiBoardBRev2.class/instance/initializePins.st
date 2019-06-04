initialization
initializePins
	super initializePins.
	pinHeader ifNil: [ pinHeader := Dictionary new ].
	pinHeader
		add: 3 -> (PotSDAPin id: 2);
		add: 5 -> (PotSCLPin id: 3);
		add: 13 -> (PotGPIOPin id: 27 number: 2)