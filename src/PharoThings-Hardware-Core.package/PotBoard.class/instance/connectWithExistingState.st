controlling
connectWithExistingState

	self connectDriver.
	devices do: [ :each | each connect ]