accessing
installDevice: aDevice

	| installed |
	installed := proxy installDevice: aDevice asTransferredByValue.
	self updateLocalCopy.
	^installed