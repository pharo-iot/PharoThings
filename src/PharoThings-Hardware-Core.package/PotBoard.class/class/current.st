instance creation
current
	^current ifNil: [ 
		self setUpNewCurrent.
		SessionManager default registerUserClassNamed: self name.
		current]