operations
writeValue: aNumber into: aPin

	| remotePin |
	remotePin := proxy findPinLike: aPin.
	remotePin value: aNumber