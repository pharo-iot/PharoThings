controlling
calculateRotationX: anAccelerometerScaledX Y: anAccelerometerScaledY Z: anAccelerometerScaledZ
	| radiansX radiansY rotationX rotationY |
	radiansX := anAccelerometerScaledY arcTan: (self calculateDistanceA: anAccelerometerScaledX B: anAccelerometerScaledZ).
	radiansY := anAccelerometerScaledX arcTan: (self calculateDistanceA: anAccelerometerScaledY B: anAccelerometerScaledZ).	
	rotationX := radiansX radiansToDegrees.
	rotationY := radiansY radiansToDegrees * -1.
	^ { rotationX . rotationY }