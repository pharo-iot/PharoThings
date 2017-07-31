printing
printWithGPIOSet

	| gpios |
	gpios := self gpioPins.
	
	^self printString,': ', gpios first name asLowercase, '..', gpios last name asLowercase