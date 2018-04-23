instance creation
setUpNewCurrent
	Current ifNotNil: [ Current disconnect ].
	Current := self new