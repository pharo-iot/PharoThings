operations
prepareTransferObjectFor: anObject by: anObjectTransporter

	| reference |
	reference := super prepareTransferObjectFor: anObject by: anObjectTransporter.
	
	reference cacheMessage: #isPeripheralsPin with: anObject isPeripheralsPin.
	reference cacheMessage: #name with: anObject name.	
	reference cacheMessage: #remotePeripherals with: anObject remotePeripherals asTransferredByValue.
		
	^reference