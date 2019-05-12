initialization
setPinsToDigitalOutput
	| gpioArray |
	gpioArray := ({ clockPin . modePin . dataPins . backlightPin } collect: #asGlamorousArray ) flattened.
	gpioArray do: [ :i |i beDigitalOutput ]