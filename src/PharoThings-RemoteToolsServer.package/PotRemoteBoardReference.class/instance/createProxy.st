proxy creation
createProxy
	| realProxy |
	realProxy := super createProxy.
	^PotRemoteBoard proxy: realProxy