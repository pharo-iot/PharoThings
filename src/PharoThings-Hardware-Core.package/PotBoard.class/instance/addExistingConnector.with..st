initialization
addExistingConnector: aString with: pinsArray
	| connector pinsArrayExisting |
	pinsArrayExisting  := (connectors at: 1) pins.
	connector := PotBoardConnector named: aString in: self with: pinsArrayExisting , pinsArray.
	connectors removeAll.
	connectors add: connector.
	^connector