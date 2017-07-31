initialization
valueIcon

	^pin value = 0
		ifTrue: [ Smalltalk ui icons iconNamed: #testRedIcon  ]
		ifFalse: [ Smalltalk ui icons iconNamed: #testGreenIcon  ]