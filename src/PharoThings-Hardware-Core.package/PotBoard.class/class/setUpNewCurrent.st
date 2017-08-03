instance creation
setUpNewCurrent
	current ifNotNil: [ current disconnect ].
	current := self new