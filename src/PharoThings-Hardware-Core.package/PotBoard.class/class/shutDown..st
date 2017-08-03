system startup
shutDown: quitting
	current ifNil: [ ^self ].
	current disconnect