printing
printOn: aStream
	super printOn: aStream.

	name ifNil: [ ^self].
	
	aStream nextPut: $(.
	aStream nextPutAll: name.
	aStream nextPut: $).