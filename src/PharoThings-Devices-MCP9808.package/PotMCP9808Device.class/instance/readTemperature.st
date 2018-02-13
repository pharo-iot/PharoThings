controlling
readTemperature
	| rawData ctemp |
	rawData := (i2cConnection read16BitsAt: 16r05) asByteArray.
	
	ctemp = ((rawData second bitAnd: 16r1F) * 256) + rawData first.
	ctemp > 4095 ifTrue: [ ctemp :=  ctemp - 8192].
	^ctemp * 0.0625