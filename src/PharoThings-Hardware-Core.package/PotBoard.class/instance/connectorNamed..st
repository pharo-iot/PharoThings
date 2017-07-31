accessing
connectorNamed: aString
	^connectors detect: [ :each | each name = aString ]