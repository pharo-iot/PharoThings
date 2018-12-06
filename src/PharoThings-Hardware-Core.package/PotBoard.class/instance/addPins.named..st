accessing
addPins: pinsArray named: aString
	^(self connectorNamed: aString) pins , pinsArray
