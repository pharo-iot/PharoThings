accessing
pinWithId: id connector: aString
	| connector |
	connector := self board connectors detect: [ :each | each name = aString ].
	^ connector pins detect: [ :each | each hasId: id ]