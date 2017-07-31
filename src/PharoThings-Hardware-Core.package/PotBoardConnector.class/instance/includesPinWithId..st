testing
includesPinWithId: id
	^pins anySatisfy: [ :each | each hasId: id ]