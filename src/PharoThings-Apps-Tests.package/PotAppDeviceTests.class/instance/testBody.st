tests
testBody
	appDevice connect.
	appDevice delay wait.
	self assert: appDevice log notNil