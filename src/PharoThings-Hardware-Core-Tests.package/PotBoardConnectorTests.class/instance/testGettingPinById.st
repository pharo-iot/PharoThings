tests
testGettingPinById

	| pin1 pin2 |
	pin1 := PotGPIO id: 10.
	pin2 := PotGPIO id: 20.
	connector pins: {  pin1. pin2 }.
	
	(connector pinWithId: 10) should be: pin1.
	(connector pinWithId: 20) should be: pin2