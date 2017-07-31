instance creation
for: aGPIOPin using: aButton
	^self new
		affectedPin: aGPIOPin;
		button: aButton