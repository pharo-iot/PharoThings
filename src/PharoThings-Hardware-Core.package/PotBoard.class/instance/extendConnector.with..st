initialization
extendConnector: aString with: pinsArray
 	| connector |
 	connector := self connectorNamed: aString.
 	connector addPins: pinsArray.
 	^connector 