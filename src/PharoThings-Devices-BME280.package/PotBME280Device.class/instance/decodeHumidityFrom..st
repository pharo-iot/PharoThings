decoding
decodeHumidityFrom: dataFromF7
	"data: Humidity MSB, Humidity LSB
	returns percents"
	| raw temperature var_H humidity |
	raw := ((dataFromF7 at: 7) << 8) | (dataFromF7 at: 8).
	temperature := self decodeTemperatureFrom: dataFromF7.
	var_H := (temperature * 1.8 + 32) - 76800.0.
	var_H := (raw - ((hCoeffs at: 4) * 64.0 + ((hCoeffs at: 5) / 16384.0 * var_H))) * ((hCoeffs at: 2) / 65536.0 * (1.0 + (hCoeffs at: 6) / 67108864.0 * var_H * (1.0 + ((hCoeffs at: 3) / 67108864.0 * var_H)))).
	humidity := var_H * (1.0 - ((hCoeffs at: 1) * var_H / 524288.0)).
	^humidity min: 100 max: 0