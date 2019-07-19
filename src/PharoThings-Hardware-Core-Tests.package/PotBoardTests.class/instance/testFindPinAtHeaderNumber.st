tests
testFindPinAtHeaderNumber

	| targetPin actual |
	board addNewConnector: #TestConnectorId with: { 10 gpio. 12 gpio. targetPin := 14 gpio. 16 gpio}.
	
	actual := board pinAtHeader: 3 gpioHeader.
	
	actual should be: targetPin