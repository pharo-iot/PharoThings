controlling
backlight: anValue
	|brigthness|
	brigthness := anValue.
	anValue > 1024 ifTrue: [ brigthness := 1024 ].
	anValue < 0 ifTrue: [ brigthness := 0 ].
	backlight value: 1024 - brigthness.
	"The range is from 0-1024 pwm. 0 is totaly bright and 1024 totaly dark. 
	The (1024 - anValue) is to invert the parameter, where 0 is totaly dark and 1024 totaly bright.
	The if is to correct values outside of range" 	
