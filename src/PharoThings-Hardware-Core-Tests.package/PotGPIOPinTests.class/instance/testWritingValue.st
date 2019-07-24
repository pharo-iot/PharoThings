tests
testWritingValue

	| ioMode |
	ioMode := Mock new.
	pin ioMode: ioMode.
	
	pin value: #newValue.
	
	ioMode should receive writeValue: #newValue into: pin.
	pin lastValue should be: #newValue