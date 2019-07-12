accessing
installDevice: aDevice
	aDevice connectTo: self.
	devices add: aDevice.
	^aDevice