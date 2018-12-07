accessing
replaceConnector: newConnector named: aString
	| oldConnector | 
	oldConnector := self connectorNamed: aString. 
	connectors replaceAll: oldConnector with: newConnector. 
	"This method replace the previous connector of pins (OrderedCollection) with the new one"