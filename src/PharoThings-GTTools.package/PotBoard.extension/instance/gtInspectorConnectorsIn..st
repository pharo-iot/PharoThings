*PharoThings-GTTools
gtInspectorConnectorsIn: composite
	<gtInspectorPresentationOrder: 0>
	
	connectors do: [ :each |  
		each gtInspectorPins: each name in: composite]