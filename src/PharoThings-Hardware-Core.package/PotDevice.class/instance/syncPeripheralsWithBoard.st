private
syncPeripheralsWithBoard
	| boardPin |
	self peripherals do: [ :each | 
		(each isPeripheralsPin and: [ each isGPIO ]) ifTrue: [ 
			boardPin := each correspondingPinIn: board.
			self setUpActualPeripherialsPin: boardPin insteadOf: each]	]