tests
testFindPinById

	| targetPin actual |
	board addNewConnector: #TestConnectorId with: { 10 gpio. targetPin := 12 gpio. 14 gpio}.
	
	actual := board pinWithId: 12.
	
	actual should be: targetPin