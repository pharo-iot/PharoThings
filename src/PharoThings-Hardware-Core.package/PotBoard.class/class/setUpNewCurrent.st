instance creation
setUpNewCurrent
	current ifNotNil: [ current disconnectDevices ].
	current := self new