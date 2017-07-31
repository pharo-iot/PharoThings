*PharoThings-GTTools
gtInspectorActionsForDevice: aDevice
	"normally this method should be on device itself. But in remote scenario aDevice will be proxy and remote side could not have any UI code. So for proper support of remote inspection logic implemented here. Board is transferred as value in that case"
	| browseAction connectingAction |
	browseAction := GLMGenericAction new action: [ aDevice browse ]; title: 'Browse'.
	connectingAction := aDevice isConnected 
		ifTrue: [ GLMGenericAction new action: [ aDevice disconnect ]; title: 'Disconnect']
		ifFalse: [ GLMGenericAction new action: [ aDevice connect ]; title: 'Connect'].
	
	^{connectingAction. browseAction}