instance creation
current: aBoard
	
	Current ifNotNil: [ Current disconnect ].
	Current := aBoard.
	SessionManager default registerUserClassNamed: self name.