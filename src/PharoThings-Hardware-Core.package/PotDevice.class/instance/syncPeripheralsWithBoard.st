private
syncPeripheralsWithBoard
	| boardPin |
	self peripherals do: [ :each | 
		(each isPeripheralsPin and: [ each isGPIO ]) ifTrue: [ 
			boardPin := board findPinLike: each.
			self setUpActualPeripherialsPin: boardPin insteadOf: each]	]