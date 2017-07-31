*PharoThings-GTTools
ghEvaluatorScriptFor: aConnector in: composite

	^ (composite custom: GLMPharoScriptPresentation new)
			doItReceiver: [ :object | aConnector ];
			smalltalkClass: [ :object | aConnector class ]