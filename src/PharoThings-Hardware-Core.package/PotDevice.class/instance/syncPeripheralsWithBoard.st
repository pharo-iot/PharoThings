private
syncPeripheralsWithBoard
	| boardPin |
	self peripherals do: [ :each | 
		(each isPeripheralsPin and: [ each isKindOf: PotGPIO ]) ifTrue: [ 
			boardPin := board findPinLike: each.
			self setUpActualPeripherialsPin: boardPin insteadOf: each]	]