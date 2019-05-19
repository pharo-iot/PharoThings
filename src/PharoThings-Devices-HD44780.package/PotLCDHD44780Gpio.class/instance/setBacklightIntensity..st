commands
setBacklightIntensity: anInteger
	backlightPin value: 1024 - (anInteger min: 0 max: 1024).
	"The range is from 0-1024 pwm. 0 is totaly bright and 1024 totaly dark. 
	The (1024 - anInteger) is to invert the parameter"