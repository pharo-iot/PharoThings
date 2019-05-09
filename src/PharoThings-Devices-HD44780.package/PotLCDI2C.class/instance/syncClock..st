writing
syncClock: anHex
	
	i2cConnection read8BitsAt: (anHex bitOr: (instructionDic at: #LCD_ENABLEBIT)) .
	i2cConnection read8BitsAt: (anHex bitAnd: ((instructionDic at: #LCD_ENABLEBIT) bitInvert))