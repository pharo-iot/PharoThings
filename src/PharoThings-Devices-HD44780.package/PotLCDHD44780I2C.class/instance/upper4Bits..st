writing
upper4Bits: anHex
	^ anHex bitAnd: 16rF0
	"return a byte with the first 4 bits of parameter. Ex:
	16r28 returns 16r20 = 0010 1000 -> 0010 0000
	16r03 returns 16r00 = 0000 0011 -> 0000 0000
	16r61 returns 16r60 = 0110 0001 -> 0110 0000"