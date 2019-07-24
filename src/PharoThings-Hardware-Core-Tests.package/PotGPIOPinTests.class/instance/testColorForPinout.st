tests
testColorForPinout 
	
	| color |
	color := pin colorForPinout.
	
	color should beInstanceOf: Color