tests
testDisconnection
	appDevice connect.
	self assert: appDevice isConnected.
	appDevice disconnect.
	self deny: appDevice isConnected