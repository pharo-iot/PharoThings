controlling
readRegisters2C: anHex
	| value  |
	value := self readRegisters: anHex.
	value >= 16r8000
		ifTrue: [ ^ ((65535 - value) + 1) * -1]
		ifFalse: [^ value ]