controlling
recoverStateOf: aBoard at: aPin
	super recoverStateOf: aBoard at: aPin.
	
	aPin lastValue ifNotNil: [:value | 
		self writeValue: value into: aPin]