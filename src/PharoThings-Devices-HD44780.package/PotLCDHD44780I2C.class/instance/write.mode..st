writing
write: anHex mode: aBit
	"mode:0 to send commands or mode:1 to send characters. Use writeCommand: and writeCharacter:"
	| upper4BitsWithMode lower4BitsWithMode upper4BitsWithModeAndBacklight lower4BitsWithModeAndBacklight|
	
	upper4BitsWithMode := aBit bitOr: (self upper4Bits:anHex).
	lower4BitsWithMode := aBit bitOr: (self lower4Bits:anHex).
	upper4BitsWithModeAndBacklight := upper4BitsWithMode bitOr: LCD_BACKLIGHT.
	lower4BitsWithModeAndBacklight := lower4BitsWithMode bitOr: LCD_BACKLIGHT.
	
	i2cConnection read8BitsAt: (upper4BitsWithModeAndBacklight).
	self syncClock: (upper4BitsWithModeAndBacklight).
	i2cConnection read8BitsAt: (lower4BitsWithModeAndBacklight).
	self syncClock: (lower4BitsWithModeAndBacklight)