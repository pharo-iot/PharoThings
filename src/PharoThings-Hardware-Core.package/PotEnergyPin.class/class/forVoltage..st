instance creation
forVoltage: aNumber

	self allSubclassesDo: [ :each | 
		(each isAbstract not and: [ each voltage = aNumber ])
			ifTrue: [ ^each new ] ].
		
	self error: 'No energy class found for ', aNumber asString