*PharoThings-RemoteToolsServer
updateActualRemoteStateFrom: remotePinState
	super updateActualRemoteStateFrom: remotePinState.
	
	ioMode := remotePinState ioMode.
	pudResister := remotePinState pudResister.
	lastValue := remotePinState lastValue
