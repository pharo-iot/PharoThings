private
syncPeripheralsWithBoard
	| boardPin |
	self peripherals do: [ :each | 
		(each isPeripheralsPin and: [ each isKindOf: PotBoardIOPin ]) ifTrue: [ 
			boardPin := board findPinLike: each.
			self setUpActualPeripherialsPin: boardPin insteadOf: each]	]