accessing
deviceName
	^ deviceName
		ifNil: [ deviceName := 'anonymous device('
				, Time now asNanoSeconds printString , ')' ]