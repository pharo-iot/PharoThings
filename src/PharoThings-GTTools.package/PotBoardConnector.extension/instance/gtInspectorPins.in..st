*PharoThings-GTTools
gtInspectorPins: title in: composite
	
	^(composite custom: (PotBoardConnectorInspector on: self))
		title: title;
		yourself