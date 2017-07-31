executing
withArgs: argArray executeMethod: aCompiledMethod

	| context result |
	context := remotePharo createSyncRequestContext.	
	result := context sendMessage: (MessageSend 
		receiver: connector selector: #withArgs:executeMethod: arguments: { argArray. aCompiledMethod}).
	connector board updateLocalCopy.
	^result