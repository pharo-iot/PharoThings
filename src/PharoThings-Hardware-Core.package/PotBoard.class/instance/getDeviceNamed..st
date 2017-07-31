accessing
getDeviceNamed: aString
	^devices detect: [ :each | each name = aString ]