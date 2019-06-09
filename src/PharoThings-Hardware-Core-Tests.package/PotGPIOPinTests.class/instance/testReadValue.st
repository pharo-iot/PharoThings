tests
testReadValue

	| ioMode actual |
	ioMode := Mock new.
	pin ioMode: ioMode.
	
	actual := pin value.
	
	actual should beReturnedFrom: [ioMode readValueFrom: pin].
	pin lastValue should be: actual