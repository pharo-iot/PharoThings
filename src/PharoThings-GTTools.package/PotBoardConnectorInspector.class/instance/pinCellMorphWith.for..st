building
pinCellMorphWith: aString for: aPin
	
	| cell |
	cell := FTCellMorph new.
	cell addMorphBack: aString asMorph.
	cell layoutInset: 6@2.
"	cell listCentering: #center."
	
	aPin connectorRow odd 
		ifTrue: [ cell color: Smalltalk ui theme lightBackgroundColor ]
		ifFalse: [ cell color: Smalltalk ui theme backgroundColor].
	^cell