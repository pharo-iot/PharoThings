accessing
value: anObject
	ioMode writeValue: anObject into: self.
	lastValue := anObject