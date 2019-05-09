initialization
setPinsToDigitalOutput
	| gpioArray |
	gpioArray := (gpioDic values collect: #asGlamorousArray ) flattened.
	gpioArray do: [ :i |i beDigitalOutput ]