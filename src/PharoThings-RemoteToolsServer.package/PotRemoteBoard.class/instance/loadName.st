accessing
loadName
	^String streamContents: [ :s | 
		s nextPutAll: proxy remotePrintString.
		s nextPutAll: ' in '.
		proxy remotePeer address printSimpleStringOn: s ]