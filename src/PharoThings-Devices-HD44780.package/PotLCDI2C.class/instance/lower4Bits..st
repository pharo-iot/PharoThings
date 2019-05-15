writing
lower4Bits: anHex
	^ (anHex bitShift: 4 ) bitAnd: 16rF0
	"return a byte with the last 4 bits of parameter. Ex:
	16r28 returns 16r80 = 0010 1000 -> 1000 0000
	16r03 returns 16r30 = 0000 0011 -> 0011 0000
	16r61 returns 16r10 = 0110 0001 -> 0001 0000"