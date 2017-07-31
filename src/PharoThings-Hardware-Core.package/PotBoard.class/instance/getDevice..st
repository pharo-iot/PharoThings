accessing
getDevice: deviceClass
	^devices detect: [ :each | each isKindOf: deviceClass ]