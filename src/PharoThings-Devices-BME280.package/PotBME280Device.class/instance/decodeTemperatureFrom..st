decoding
decodeTemperatureFrom: dataFromF7
	"data: Temperature MSB, Temperature LSB, Temperature xLSB.
	returns Celsius"
	| raw var1 var2 |
	raw := ((dataFromF7 at: 4) << 12) | ((dataFromF7 at: 5) << 4) | ((dataFromF7 at: 6) >> 4).
	
	var1 := (raw / 16384.0 - ((tCoeffs at: 1) / 1024.0)) * (tCoeffs at: 2).
	var2 := ((raw / 131072.0 - ((tCoeffs at: 1) / 8192.0)) * (raw / 131072.0 - ((tCoeffs at: 1) / 8192.0))) * (tCoeffs at: 3).
	^(var1 + var2) / 5120.0