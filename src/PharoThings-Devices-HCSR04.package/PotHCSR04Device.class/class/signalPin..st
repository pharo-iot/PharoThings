settings
signalPin: aGPIOPin
	^self new
	  triggerPin: aGPIOPin;
	  echoPin: aGPIOPin;
	  yourself