accessing
pinWithId: id
	^pins detect: [ :each | each hasId: id ]