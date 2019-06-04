initialization
initializePins
	super initializePins.
	pinHeader ifNil: [ pinHeader := Dictionary new ].
	pinHeader
		add: 3 -> (PotGPIOPin id: 2 number: 8);
		add: 5 -> (PotGPIOPin id: 3 number: 9)