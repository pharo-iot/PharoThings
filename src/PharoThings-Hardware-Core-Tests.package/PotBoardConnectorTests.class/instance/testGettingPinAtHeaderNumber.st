tests
testGettingPinAtHeaderNumber

	| pin1 pin2 pin3 |
	pin1 := PotGPIO id: 10.
	pin2 := PotGPIO id: 20.
	pin3 := PotGPIO id: 30.
	connector pins: {  pin1. pin2. pin3 }.
	
	(connector pinAtHeader: 2) should be: pin2.
	(connector pinAtHeader: 3) should be: pin3