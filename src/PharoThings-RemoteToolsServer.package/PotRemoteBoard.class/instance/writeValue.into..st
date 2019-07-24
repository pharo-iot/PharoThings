operations
writeValue: aNumber into: aPin

	| remotePin |
	remotePin := proxy pinLike: aPin.
	remotePin value: aNumber