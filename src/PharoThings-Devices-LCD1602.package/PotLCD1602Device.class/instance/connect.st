controlling
connect
	gpioArray do: [ :item | item 
		board: board;
		beDigitalOutput;
		value: 0 ].
	backlight board: board; bePWMOutput; value: 0.
	self writeRegisters.
	self clear.