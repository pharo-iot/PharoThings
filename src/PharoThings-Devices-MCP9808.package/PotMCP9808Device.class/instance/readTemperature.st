controlling
readTemperature
	| rawData ctemp |
	"Read data back from 0x05(5), 2 bytes
		Temp MSB, TEMP LSB"
	rawData := (i2cConnection read16BitsAt: 16r05) asByteArray.
	
	"Convert the data to 13-bits"
	ctemp := ((rawData second bitAnd: 16r1F) * 256) + rawData first.
	ctemp > 4095 ifTrue: [ ctemp :=  ctemp - 8192].
	^ctemp * 0.0625