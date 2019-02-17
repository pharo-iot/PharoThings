operations
writeDigitalValue: aBit into: aPin
	firmata digitalWrite: aPin id value: aBit
