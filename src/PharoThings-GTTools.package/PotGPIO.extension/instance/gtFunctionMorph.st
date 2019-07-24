*PharoThings-GTTools
gtFunctionMorph

	^function isDefault 
		ifTrue: ['' asMorph]
		ifFalse: [ super gtFunctionMorph ]