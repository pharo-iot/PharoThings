accessing
initialize
	gpioArray := Array 
		with: (PotClockGPIOPin id: 27 number: 2) "gpio2 RS - set character '1' ou lcd commands '0' " 
		with: (PotClockGPIOPin id: 22 number: 3) "gpio3 EN - clock enable " 
		with: (PotClockGPIOPin id: 25 number: 6) "gpio6 D4 - data bit" 
		with: (PotClockGPIOPin id: 24 number: 5) "gpio5 D5 - data bit"
		with: (PotClockGPIOPin id: 23 number: 4) "gpio4 D6 - data bit"
		with: (PotClockGPIOPin id: 18 number: 1)."gpio1 D7 - data bit"
	backlight := (PotPwmGPIOPin id: 12 number: 26)."gpio26 BL - back light PWM"