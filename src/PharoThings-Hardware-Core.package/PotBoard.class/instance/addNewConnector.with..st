initialization
addNewConnector: aString with: pinsArray
	| connector |
	connector := PotBoardConnector named: aString in: self with: pinsArray.
	connectors add: connector.
	^connector