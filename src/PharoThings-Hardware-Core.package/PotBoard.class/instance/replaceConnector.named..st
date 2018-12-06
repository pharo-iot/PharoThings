accessing
replaceConnector: pinsArray named: aString
	| oldConnector | 
	oldConnector := self connectorNamed: aString. 
	connectors replaceAll: oldConnector with: pinsArray. 
