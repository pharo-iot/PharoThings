accessing
gpioPins
	^(pins select: [ :each | each isKindOf: PotGPIOPin  ]) sorted: #number ascending