initialization
initializePins
	super initializePins.
	pinHeader ifNil: [ pinHeader := Dictionary new ].
	pinHeader
		add: 8 -> (PotGPIOPin id: 14 number: 15);
		add: 10 -> (PotGPIOPin id: 15 number: 16);
		add: 19 -> (PotGPIOPin id: 10 number: 12);
		add: 21 -> (PotGPIOPin id: 9 number: 13);
		add: 23 -> (PotGPIOPin id: 11 number: 14);
		add: 24 -> (PotGPIOPin id: 8 number: 10);
		add: 26 -> (PotGPIOPin id: 7 number: 11);
		add: 27 -> (PotGPIOPin id: 0 number: 30);
		add: 28 -> (PotGPIOPin id: 1 number: 31);
		add: 35 -> (PotGPIOPin id: 19 number: 24);
		add: 38 -> (PotGPIOPin id: 20 number: 28);
		add: 40 -> (PotGPIOPin id: 21 number: 29)