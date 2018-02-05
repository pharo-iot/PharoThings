*PharoThings-GTTools
gtPeripheralsCellMorphForDevice: aDevice
	"normally this method should be on device itself. But in remote scenario aDevice will be proxy and 	remote side could not have any UI code. So for proper support of remote inspection logic implemented 	here. Board is transferred as value in that case"

	| cell peripheralsMorph |
	cell := FTCellMorph new.
	cell layoutInset: 6@2.
	cell cellInset: 0@0.
	aDevice peripherals do: [ :each |
		peripheralsMorph := each isPeripheralsPin 
			ifTrue: [ "pin is transferred as value in remote scenario. 
						So it is safe to ask it for specific morph representation"
				each gtAsDevicePeripheralsMorph ]
			ifFalse: [ each name asMorph ].
		cell addMorphBack: peripheralsMorph.
		cell addMorphBack: '; ' asMorph].
	cell submorphs ifNotEmpty: [:s | s last delete].
	^cell