system startup
startUp: isImageStarting
	current ifNil: [ ^self ].
	current connect