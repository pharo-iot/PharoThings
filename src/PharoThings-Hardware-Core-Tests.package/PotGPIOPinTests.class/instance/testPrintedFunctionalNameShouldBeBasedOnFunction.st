tests
testPrintedFunctionalNameShouldBeBasedOnFunction
	
	| function |
	function := Mock new.
	pin function: function.
	
	pin printFunctionalName should beReturnedFrom: [ function printPin: pin ]