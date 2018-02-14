decoding
decodePressureFrom: dataFromF7
	"data: Pressure MSB, Pressure LSB, Pressure xLSB
	returns hPa"
	| raw temperature var1 var2 p |
	raw := ((dataFromF7 at: 1) << 12) | ((dataFromF7 at: 2) << 4) | ((dataFromF7 at: 3) >> 4).
	temperature := self decodeTemperatureFrom: dataFromF7.
	var1 := ((temperature * 5120.0) / 2.0) - 64000.0.
	var2 := var1 * var1 * (pCoeffs at: 6) / 32768.0.
	var2 := var2 + (var1 * (pCoeffs at: 5) * 2.0).
	var2 := (var2 / 4.0) + ((pCoeffs at: 4) * 65536.0).
	var1 := ((pCoeffs at: 3) * var1 * var1 / 524288.0 + (( pCoeffs at: 2) * var1)) / 524288.0.
	var1 := (1.0 + (var1 / 32768.0)) * (pCoeffs at: 1).
	p := 1048576.0 - raw.
	p := (p - (var2 / 4096.0)) * 6250.0 / var1.
	var1 := (pCoeffs at: 9) * p * p / 2147483648.0.
	var2 := p * (pCoeffs at: 8) / 32768.0.
	^(p + ((var1 + var2 + (pCoeffs at: 7)) / 16.0)) / 100