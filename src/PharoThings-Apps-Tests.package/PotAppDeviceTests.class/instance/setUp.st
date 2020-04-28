running
setUp
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	appDevice := PotAppDeviceMock new.
	appDevice deviceName: 'testAppDevice'.
	appDevice delay: 500 milliSeconds