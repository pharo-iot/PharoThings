controlling
readParameters
	"Pressure MSB, Pressure LSB, Pressure xLSB, Temperature MSB, Temperature LSB
	Temperature xLSB, Humidity MSB, Humidity LSB"
	| data |
	data := i2cConnection read8BitsArray: 8 startingAt:  16rF7.

	^{ 
		self decodeTemperatureFrom: data.
		self decodePressureFrom: data.
		self decodeHumidityFrom: data 
	 }