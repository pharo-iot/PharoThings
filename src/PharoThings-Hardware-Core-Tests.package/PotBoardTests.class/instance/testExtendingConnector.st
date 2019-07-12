tests
testExtendingConnector
	| connector |
	
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio }.
	board extendConnector: #TestConnectorId with: { 14 gpio. 16 gpio }.
	
	connector := board connectorNamed: #TestConnectorId.
	
	(connector pinWithId: 10) board should be: board.
	(connector pinWithId: 12) board should be: board.
	(connector pinWithId: 14) board should be: board.
	(connector pinWithId: 16) board should be: board