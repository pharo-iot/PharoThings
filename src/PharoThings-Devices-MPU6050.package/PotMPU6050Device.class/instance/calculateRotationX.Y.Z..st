controlling
calculateRotationX: anAccelerometerSkaliertX Y: anAccelerometerSkaliertY Z: anAccelerometerSkaliertZ
	| radiansX radiansY rotationX rotationY |
	radiansX := anAccelerometerSkaliertY arcTan: (self calculateDistanceA: anAccelerometerSkaliertX B: anAccelerometerSkaliertZ).
	radiansY := anAccelerometerSkaliertX arcTan: (self calculateDistanceA: anAccelerometerSkaliertY B: anAccelerometerSkaliertZ).	
	rotationX := radiansX radiansToDegrees.
	rotationY := radiansY radiansToDegrees * -1.
	^ { rotationX . rotationY }