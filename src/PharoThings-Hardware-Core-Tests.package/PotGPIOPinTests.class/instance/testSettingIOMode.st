tests
testSettingIOMode
	| ioMode |
	ioMode := Mock new.
	
	pin ioMode: ioMode.
	
	board should receive setIOMode: ioMode into: pin.
	pin ioMode should be: ioMode