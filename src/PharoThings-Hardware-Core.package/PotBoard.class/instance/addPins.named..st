accessing
addPins: pinsArray named: aString
	^(self connectorNamed: aString) pins , pinsArray
	"This method concatenates the previous array of pins with the new one"