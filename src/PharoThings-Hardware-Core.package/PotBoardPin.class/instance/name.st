accessing
name
	| name |
	name := self class name.
	^(name allButFirst: 3) allButLast: 3 "Iot->name->Pin"