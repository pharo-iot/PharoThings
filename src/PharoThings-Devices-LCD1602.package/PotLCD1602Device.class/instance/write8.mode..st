controlling
write8: anObject mode: anBit
	(Delay forSeconds: 0.001) wait.
	"1000 miliseconds waiting to prevent write too quickly"
	(gpioArray at: 1) value: anBit.
	(gpioArray at: 6) value: (anObject at: 1) asString asNumber.
	(gpioArray at: 5) value: (anObject at: 2) asString asNumber.
	(gpioArray at: 4) value: (anObject at: 3) asString asNumber.
	(gpioArray at: 3) value: (anObject at: 4) asString asNumber.
	self pulseEnable. 
	(gpioArray at: 6) value: (anObject at: 5) asString asNumber.
	(gpioArray at: 5) value: (anObject at: 6) asString asNumber.
	(gpioArray at: 4) value: (anObject at: 7) asString asNumber.
	(gpioArray at: 3) value: (anObject at: 8) asString asNumber.	
	self pulseEnable.