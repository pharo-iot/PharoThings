printing
printWithGPIOSet

	| gpios |
	gpios := self gpioPins sorted: #headerNumber ascending.
	
	^self printString,': ', gpios first name asLowercase, '..', gpios last name asLowercase