controlling
connect
	process := [ [ true ]
		whileTrue: [ self loopBody.
			delay wait ] ]
		forkAt: Processor userBackgroundPriority
		named: self printString , ': ' , self deviceName