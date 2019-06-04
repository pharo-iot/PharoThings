accessing
pinAtHeader: anInteger connector: aString
	"pinAtHeader: 1 connector: 'P1'"
	| connector |
	connector := self board connectors detect: [ :each | each name = aString ].
	^ connector pins at: anInteger