initialization
initialize
	super initialize.
	announcer := Announcer new.
	pollingRate := 100 milliSeconds