printing
printOn: aStream
	super printOn: aStream.
	
	aStream 
		nextPut: $(;
		nextPutAll: number asString;
		nextPutAll: ': ';
		nextPutAll: function name;
		nextPut: $)