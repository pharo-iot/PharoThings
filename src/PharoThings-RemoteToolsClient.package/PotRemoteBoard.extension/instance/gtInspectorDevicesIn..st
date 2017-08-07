*PharoThings-RemoteToolsClient
gtInspectorDevicesIn: composite
	<gtInspectorPresentationOrder: 1>
	
	^(self localCopy gtInspectorDevicesIn: composite)
		dynamicActionsOnSelection: [ :presentation | 
			self gtInspectorActionsForDevice: presentation rawSelection]