tests
testConfiguringNewConnector
	| connector |
	
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio }.
	
	connector := board connectorNamed: #TestConnectorId.
	connector board should be: board.
	(connector pinWithId: 10) board should be: board.
	(connector pinWithId: 12) board should be: board