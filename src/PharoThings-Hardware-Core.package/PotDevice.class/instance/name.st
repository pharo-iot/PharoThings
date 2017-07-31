accessing
name
	^ name ifNil: [ self class name allButFirst: 3 "no IoT prefix" ]