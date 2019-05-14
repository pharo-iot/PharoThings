initialization
setPinsToDigitalOutput
	| gpioArray |
	gpioArray := { clockPin . modePin . dataPins . backlightPin } flattened.
	gpioArray do: [ :i |i beDigitalOutput ]