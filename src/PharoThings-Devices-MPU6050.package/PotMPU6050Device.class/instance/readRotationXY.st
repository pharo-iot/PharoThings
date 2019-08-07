controlling
readRotationXY
	| accelerometerScaled rotation rotationX rotationY |
	accelerometerScaled := self readAccelerometerScaled.
	rotation := self calculateRotationX: (accelerometerScaled at: 1) Y: (accelerometerScaled at: 2) Z: (accelerometerScaled at: 3).
	rotationX := rotation at: 1.
	rotationY := rotation at: 2.
	^ { rotationX . rotationY }