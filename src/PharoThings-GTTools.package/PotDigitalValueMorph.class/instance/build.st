initialization
build

	| valueMorph |
	valueMorph := self buildValueMorph.
	valueMorph setBalloonText: 'Pin value: ', pin value asString.
	
	self addMorphBack: valueMorph.
	self addMorphBack: pin ioDirectionString asMorph