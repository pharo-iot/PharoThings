accessing
localCopy
	^ localCopy ifNil: [ 
			localCopy := proxy asLocalObject.
			localCopy cacheRemoteState ]