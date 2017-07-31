operations
readDigitalValueFrom: aPin
	^pins at: aPin id ifAbsent: [0]