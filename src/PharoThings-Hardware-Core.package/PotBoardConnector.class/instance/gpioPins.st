accessing
gpioPins
	^(pins select: [ :each | each isKindOf: PotGPIO ]) sorted: #number ascending