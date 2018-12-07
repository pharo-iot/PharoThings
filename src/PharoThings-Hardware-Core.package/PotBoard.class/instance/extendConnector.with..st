initialization
extendConnector: aString with: pinsArray
	| connector pinsArrayExtended |
	pinsArrayExtended := self addPins: pinsArray named: aString.
	connector := PotBoardConnector named: (aString) in: self with: pinsArrayExtended.
	self replaceConnector: connector named: aString.
	^connector