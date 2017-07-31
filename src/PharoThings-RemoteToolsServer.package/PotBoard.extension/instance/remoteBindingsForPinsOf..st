*PharoThings-RemoteToolsServer
remoteBindingsForPinsOf: connectorName
	| myConnector |
	myConnector := self connectorNamed: connectorName.
	
	^self bindingsForPinsOf: myConnector