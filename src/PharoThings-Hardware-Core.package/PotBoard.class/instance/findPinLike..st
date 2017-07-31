accessing
findPinLike: aPin

	| targetConnector |
	targetConnector := connectors detect: [ :each | each includesPinWithId: aPin id].
	^targetConnector pinWithId: aPin id