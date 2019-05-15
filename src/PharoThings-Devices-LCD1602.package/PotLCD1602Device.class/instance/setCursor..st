controlling
setCursor: anValue
	|line|
	(anValue = 1) ifTrue: [line := '10000000'].
	(anValue = 2) ifTrue: [line := '11000000'].
	self write8: line mode: 0.