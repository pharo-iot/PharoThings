printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	self isAssignedToBoard ifFalse: [ aStream nextPutAll: 'Unassigned; ' ].
	aStream nextPutAll: id asString.
	function isDefault ifFalse: [ 
		aStream 
			nextPutAll: '; '; nextPutAll: function name].
	aStream nextPut: $)