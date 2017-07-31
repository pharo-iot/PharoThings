system startup
startUp: isImageStarting
	current ifNil: [ ^self ].
	current 
		connectDriver;
		connectDevices.