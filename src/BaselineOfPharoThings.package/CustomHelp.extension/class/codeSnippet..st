*BaselineOfPharoThings
codeSnippet: code
	^	
		String cr asText ,
		code asText allBold , 
		(self customLink: 'Open In Playground' block: [ GTPlayground openContents: code.])