tests
testGettingAllGPIOPins

	| pin1 pin2 pin3 pins |
	pin1 := PotPower5VPin new.
	pin2 := PotGPIO id: 1.
	pin3 := PotGPIO id: 2.
	connector pins: {  pin1. pin2. pin3 }.
	
	pins := connector gpioPins.
	pins should equal: { pin2. pin3 }