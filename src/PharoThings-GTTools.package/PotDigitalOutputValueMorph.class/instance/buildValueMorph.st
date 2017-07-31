initialization
buildValueMorph

	| icon button |
	icon := self valueIcon.
	button := IconicButton new
		target: self;
		actionSelector: #togglePinValue;
		color: Color transparent;
		borderWidth: 0;
		labelGraphic: icon;
		extent: icon extent.
	^button