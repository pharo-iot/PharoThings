tests
testFindPinLikeGivenOne

	| targetPin actual |
	board addNewConnector: #TestConnectorId with: { 10 gpio. targetPin := 12 gpio. 14 gpio}.
	
	actual := board pinLike: 12 gpio.
	
	actual should be: targetPin