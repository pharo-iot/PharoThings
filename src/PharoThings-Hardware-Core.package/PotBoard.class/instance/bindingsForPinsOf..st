accessing
bindingsForPinsOf: aConnector
	
	^aConnector gpioPins collect: [:each | each asBinding  ] as: Array