initialization
configureForRpiBoard3B: aBoard
	"trigger pin send the ultrasonic pulse. 
	echoPin become on (after receive the return pulse) by the same time spent to pulse go and back
	If the trigger pin is not setted, it use the default pins GPIO0 and GPIO21 "
	
	triggerPin ifNil: [triggerPinNumber := 5. echoPinNumber := 17].
	triggerPin := aBoard pinWithId: triggerPinNumber.	
	
	"If the echo pin is false, it use the trigger pin as echo pin. Some ultrasonic sensor uses only 1 gpio to both"
	echoPinNumber ifNil: [echoPin := triggerPin] ifNotNil: [echoPin := aBoard pinWithId: echoPinNumber]