writing
write: anHex charMode: aBit
	| j |
	j := 1.
	(Delay forSeconds: 0.0001) wait.
	"1 miliseconds waiting to prevent write too quickly"
	(gpioDic at: #modePin) value: aBit.
	8 to: 1 by: -1 do: [ :i | 
		(busMode = '#4bit' and: [ j > 4 ]) 
			ifTrue: [ j := 1.
				self syncClock ]. "if busMode is 4bit reuse the 4 wires to send the last 4 bits"
		((gpioDic at: #dataPins) at: j) value: (anHex bitAt: i).
		j := j+1.
		 ].
	self syncClock