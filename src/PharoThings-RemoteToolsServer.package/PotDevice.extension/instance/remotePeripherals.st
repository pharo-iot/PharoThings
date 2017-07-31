*PharoThings-RemoteToolsServer
remotePeripherals

	^self peripherals collect: [ :each |
		each isPeripheralsPin ifTrue: [ each asTransferredByValue ] ifFalse: [ each ]]