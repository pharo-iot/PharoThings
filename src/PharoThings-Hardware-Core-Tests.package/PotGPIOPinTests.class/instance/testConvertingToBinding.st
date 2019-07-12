tests
testConvertingToBinding
	
	| binding |
	pin id: 100.
	
	binding := pin asBinding.
	
	binding should equal: #gpio100 -> pin