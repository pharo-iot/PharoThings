accessing
rows
	| rows |
	rows := pins pairsCollect: [ :p1 :p2 | {p1. p2} ].
	pins size even ifFalse: [ ^rows, {{ pins last }} ].
	^rows