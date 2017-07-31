*PharoThings-RemoteToolsServer
updateActualRemoteStateFrom: remoteConnectorState

	pins with: remoteConnectorState pins asLocalObject do: [ :current :remote | 
		current updateActualRemoteStateFrom: remote	]