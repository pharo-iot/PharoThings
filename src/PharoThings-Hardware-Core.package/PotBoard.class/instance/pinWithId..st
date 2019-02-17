accessing
pinWithId: pinId

	| targetConnector |
	targetConnector := connectors detect: [ :each | each includesPinWithId: pinId].
	^targetConnector pinWithId: pinId