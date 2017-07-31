*PharoThings-RemoteToolsServer
updateActualRemoteStateFrom: remoteBoardState

	| newDevices |
	remoteBoardState connectors asLocalObject do: [:each |
		(self connectorNamed: each name) updateActualRemoteStateFrom: each].
	newDevices := remoteBoardState devices asLocalObject.
	devices removeAll; addAll: newDevices