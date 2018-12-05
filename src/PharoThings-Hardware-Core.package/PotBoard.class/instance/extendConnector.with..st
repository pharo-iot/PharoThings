initialization
extendConnector: aString with: pinsArray
	| connector pinsArrayExisting |
	pinsArrayExisting  := (self connectorNamed: aString) pins.
	connector := PotBoardConnector named: aString in: self with: pinsArrayExisting , pinsArray.
	connectors removeFirst.
	connectors add: connector.
	^connector