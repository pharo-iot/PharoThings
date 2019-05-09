writing
write: anHex charMode: aBit
	| upper4BitsWithMode lower4BitsWithMode upper4BitsWithModeAndBacklight lower4BitsWithModeAndBacklight|
	
	upper4BitsWithMode := aBit bitOr: (self upper4Bits:anHex).
	lower4BitsWithMode := aBit bitOr: (self lower4Bits:anHex).
	upper4BitsWithModeAndBacklight := upper4BitsWithMode bitOr: (instructionDic at: #LCD_BACKLIGHT).
	lower4BitsWithModeAndBacklight := lower4BitsWithMode bitOr: (instructionDic at: #LCD_BACKLIGHT).
	
	i2cConnection read8BitsAt: (upper4BitsWithModeAndBacklight).
	self syncClock: (upper4BitsWithModeAndBacklight).
	i2cConnection read8BitsAt: (lower4BitsWithModeAndBacklight).
	self syncClock: (lower4BitsWithModeAndBacklight)