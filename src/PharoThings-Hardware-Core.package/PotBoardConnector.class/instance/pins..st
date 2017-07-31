accessing
pins: anArray
	pins := anArray.
	pins doWithIndex: [:pin :i |
		pin board: board.
		pin position:  (i - 1 \\ 2 + 1) @ (i + 1 // 2)	]