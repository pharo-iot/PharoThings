commands
calculateDistance: aTravelTimeNumber
	"distance = (traveltime/2) x speed of sound
	The speed of sound is: 343m/s
	We need to divide the traveltime by 2 because we have to take into account that the wave was sent, hit the object, and then returned back to the sensor."
	^ (aTravelTimeNumber * 34300 / 2 / 1000000) asFloat round: 1