*PharoThings-RemoteToolsClient
gtInspectorActionsForDevice: aDevice
	"here we decorate local board device actions with extra updating logic at the end of action"
	| actions |
	actions := localCopy gtInspectorActionsForDevice: aDevice.
	actions do: [ :each | | remoteAction |
		remoteAction := each action.
		each action: [ remoteAction value. self updateLocalCopy ] ].
	^actions