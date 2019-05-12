writing
syncClock: anHex
	i2cConnection read8BitsAt: (anHex bitOr: LCD_ENABLEBIT).
	i2cConnection read8BitsAt: (anHex bitAnd: (LCD_ENABLEBIT bitInvert))