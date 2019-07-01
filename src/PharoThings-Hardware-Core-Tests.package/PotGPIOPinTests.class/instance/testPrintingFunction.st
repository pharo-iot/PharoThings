tests
testPrintingFunction
	
	| function |
	function := Mock new.
	pin function: function.
	
	pin printFunction should beReturnedFrom: [ function printPin: pin ]