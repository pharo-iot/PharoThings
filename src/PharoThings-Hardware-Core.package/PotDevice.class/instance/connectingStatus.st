accessing
connectingStatus

	^[self isConnected ifTrue: [#on] ifFalse: [#off]]
		on: SubclassResponsibility do: [ :err | '?' ]