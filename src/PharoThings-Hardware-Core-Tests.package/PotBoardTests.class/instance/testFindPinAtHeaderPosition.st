tests
testFindPinAtHeaderPosition

	| targetPin actual |
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio. targetPin := 14 gpio. 16 gpio}.
	
	actual := board pinAtHeader: (2@1) gpioHeader.
	
	actual should be: targetPin