controlling
disconnect
	self isConnected
		ifFalse: [ ^ self ].
	process terminate