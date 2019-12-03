tests
testConnection
	appDevice connect.
	self assert: appDevice process name equals: (appDevice printString, ': ', appDevice deviceName).
	self assert: appDevice process priority equals: Processor userBackgroundPriority.
	self assert: appDevice isConnected
