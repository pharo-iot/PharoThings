*PharoThings-GTTools
gtAsDevicePeripheralsMorph
	| bar |
	bar := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	bar 
		addMorphBack: self gtNameMorph;
		addMorphBack: self gtValueMorph.
	^bar