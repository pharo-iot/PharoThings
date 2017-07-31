accessing
installDevice: aDevice
	devices add: aDevice.
	aDevice connectTo: self.
	^aDevice