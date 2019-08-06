controlling
readGyroscopeSkaliert
	| gyro gyroX gyroY gyroZ |
	gyro := self readGyroscope.
	gyroX := (gyro at: 1)/131 asFloat round: 6.
	gyroY := (gyro at: 2)/131 asFloat round: 6.
	gyroZ := (gyro at: 3)/131 asFloat round: 6.
	^ { gyroX . gyroY . gyroZ }