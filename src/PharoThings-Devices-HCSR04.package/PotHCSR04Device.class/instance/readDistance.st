commands
readDistance
	"Send a pulse, read the travel time of pulse and return the distance in cm"
	| travelTime semaphore |
	semaphore := Semaphore new.
	[ self sendPulse.
	travelTime := self readPinStateDuration.
	semaphore signal ] fork.
	semaphore 
		wait: 100 milliSeconds
		onCompletion: [ ^ self calculateDistance: travelTime ] 
		onTimeout: [ self rebootSensor. ^ -1 ]