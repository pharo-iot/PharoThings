accessing
pinAtHeader: anInteger connector: aString
	| connector |
	connector := self connectors detect: [ :each | each name = aString ].
	^ connector pinAtHeader: anInteger