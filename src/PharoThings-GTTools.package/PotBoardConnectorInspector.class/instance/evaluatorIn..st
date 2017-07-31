building
evaluatorIn: composite
	^ (connector board ghEvaluatorScriptFor: connector in: composite)
		variableBindings: [ self pinBindings ];
		display: [ :object | 
			String streamContents: [ :stream | 
				stream 
					nextPutAll: self evaluatorDescription asComment;
					cr;
					nextPutAll: (GTSnippets snippetAt: connector printString asSymbol)] ];
		onChangeOfPort: #text act: [ :textPresentation :object |
			
				GTSnippets 
					snippetAt: connector printString asSymbol
					put: (self stringWithoutInitialCommentFrom: textPresentation text asString).
				 textPresentation clearUserEdits ];
		installDefaultSelectionActions