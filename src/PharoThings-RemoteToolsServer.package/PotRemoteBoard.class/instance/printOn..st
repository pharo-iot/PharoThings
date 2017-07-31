printing
printOn: aStream
	proxy remotePeer isConnected ifFalse: [ ^super printOn: aStream ].
	
	aStream nextPutAll: self name