commands
rebootSensor
	"Reset the pins when the sensor freeze"
	echoPin beDigitalOutput; value: 1.
	1 milliSeconds wait.
	echoPin value: 0; beDigitalInput; enablePullDownResister.
	triggerPin beDigitalOutput; value: 0