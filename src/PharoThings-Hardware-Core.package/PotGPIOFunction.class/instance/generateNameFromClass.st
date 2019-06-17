private
generateNameFromClass

	| className |
	className := self class name.
	^className copyFrom: 4 "Pot" to: className size - 'Function' size