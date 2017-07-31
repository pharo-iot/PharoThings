*PharoThings-RemoteToolsClient
ghEvaluatorScriptFor: aConnector in: composite
	| remoteReceiver |
	remoteReceiver := PotRemoteConnectorDoItReceiver for: proxy remotePeer connector: aConnector.
	^ (composite custom: (SeamlessRemoteScriptPresentation remotePeer: proxy remotePeer))
			doItReceiver: [ :object | remoteReceiver ];
			smalltalkClass: [ :object | remoteReceiver ]