private
setUpActualPeripherialsPin: connectedBoardPin insteadOf: declaredPeripheralsPin

	self class allSlots 
		select: [ :each | (each read: self) == declaredPeripheralsPin ]
		thenDo: [ :each | each write: connectedBoardPin to: self ]