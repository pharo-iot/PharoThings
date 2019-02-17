system startup
startUp: isImageStarting
	Current ifNil: [ ^self ].
	
	isImageStarting 
		ifTrue: [ Current connect]
		ifFalse: [ 
			"In case of simple image save we do not recover configured board pin state
			because it would affect manually modified pins state 
			which is not desired when user saves the image"
			Current connectWithExistingState ]