accessing
correspondingPinIn: aBoard

	| connector |
	connector := self pointsToDefaultConnector 
		ifTrue: [ aBoard connectors first]
		ifFalse: [ aBoard connectorNamed: connectorName ].
	^self correspondingPinInConnector: connector.