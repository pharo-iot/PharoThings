tests
testSettingPWMOutputMode
	
	pin function: PotPWMFunction new.
	
	pin bePWMOutput.

	pin ioMode should beInstanceOf: PotPWMOutputPinMode 