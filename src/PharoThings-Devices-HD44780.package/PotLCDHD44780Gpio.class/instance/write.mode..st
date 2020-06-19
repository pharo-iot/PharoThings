writing
write: anHex mode: aBit
	"mode:0 to send commands or mode:1 to send characters. Use writeCommand: and writeCharacter:"
	| j |
	j := 1.
	0.001 milliSeconds wait.
	"1 miliseconds waiting to prevent write too quickly"
	modePin value: aBit.
	8 to: 1 by: -1 do: [ :i | 
		j > dataPins size
			ifTrue: [ j := 1.
				self syncClock ].	"if busMode is 4bit reuse the 4 wires to send the last 4 bits"
		(dataPins at: j) value: (anHex bitAt: i).
		j := j + 1 ].
	self syncClock