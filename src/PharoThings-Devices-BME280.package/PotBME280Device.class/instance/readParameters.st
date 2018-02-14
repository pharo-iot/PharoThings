controlling
readParameters

	"Pressure MSB, Pressure LSB, Pressure xLSB, Temperature MSB, Temperature LSB
	Temperature xLSB, Humidity MSB, Humidity LSB"
	| data adc_p adc_t adc_h |
	data := i2cConnection read8BitsArray: 8 startingAt:  16rF7.

	"Convert pressure and temperature data to 19-bits"
	adc_p := (((data at: 1) * 65536) + ((data at: 2) * 256) + ((data at: 2) & 16rF0)) / 16.
	adc_t := (((data at: 4) * 65536) + ((data at: 5) * 256) + ((data at: 5) & 16rF0)) / 16.
	"Convert the humidity data"
	adc_h := (data at: 7) * 256 + (data at: 8)