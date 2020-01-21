controlling
readGyroscope
	| gyroX gyroY gyroZ |
	gyroX := self readRegisters2C: 16r43.
	gyroY := self readRegisters2C: 16r45.
	gyroZ := self readRegisters2C: 16r47.
	^ { gyroX . gyroY . gyroZ }