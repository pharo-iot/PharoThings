initialization
extendConnector: aString with: pinsArray
	| connector |
	connector := PotBoardConnector named: aString in: self with: (self addPins: pinsArray named: aString).
	connectors removeFirst ; addFirst: connector.
	^connector