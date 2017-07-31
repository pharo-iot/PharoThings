operations
writePWMValue: anInteger into: aPin
	firmata analogWrite: aPin id value: anInteger