instance creation
current
	self isAbstract & Current isNil ifTrue: [ ^self error: 'Use concrete board class!' ].
	
	^Current ifNil: [ 
		self setUpNewCurrent.
		Current]