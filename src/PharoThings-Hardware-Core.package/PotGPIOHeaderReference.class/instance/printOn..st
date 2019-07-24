printing
printOn: aStream
	self printReferenceOn: aStream.
	aStream 
		nextPut: $ ;
		nextPutAll: #gpioHeader.
	self pointsToDefaultConnector ifFalse: [ 
		aStream 
			nextPutAll: ' @ ' ;
			print: connectorName ]