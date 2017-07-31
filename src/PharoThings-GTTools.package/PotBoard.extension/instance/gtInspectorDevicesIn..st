*PharoThings-GTTools
gtInspectorDevicesIn: composite
	<gtInspectorPresentationOrder: 1>
	
	^composite fastTable
		title: 'Devices';
		display: [ devices ];
		wantsAutomaticRefresh: true;
		column: 'Name' evaluated: [ :device | device name ] width: 100;
		column: 'Status' evaluated: [ :device | device connectingStatus ] width: 50;
		column: 'Peripherals' evaluated: [ :device | self gtPeripheralsCellMorphForDevice: device ];
		dynamicActionsOnSelection: [ :presentation | self gtInspectorActionsForDevice: presentation rawSelection]