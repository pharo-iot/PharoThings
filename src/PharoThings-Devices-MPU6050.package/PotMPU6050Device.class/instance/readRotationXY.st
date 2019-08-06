controlling
readRotationXY
	| accelerometerSkaliert rotation rotationX rotationY |
	accelerometerSkaliert := self readAccelerometerSkaliert.
	rotation := self calculateRotationX: (accelerometerSkaliert at: 1) Y: (accelerometerSkaliert at: 2) Z: (accelerometerSkaliert at: 3).
	rotationX := rotation at: 1.
	rotationY := rotation at: 2.
	^ { rotationX . rotationY }