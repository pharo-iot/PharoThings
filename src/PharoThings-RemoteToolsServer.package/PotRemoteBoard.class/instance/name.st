accessing
name
	^name ifNil: [ name := self loadName ]