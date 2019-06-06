accessing
pinAtHeader: anInteger
	| connector |
	connector := self connectors first.
	^ connector pinAtHeader: anInteger