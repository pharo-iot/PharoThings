private
announceState
	
	lastState = releaseState 
		ifTrue: [ announcer announce: PotButtonReleased ]
		ifFalse: [ announcer announce: PotButtonPressed ]