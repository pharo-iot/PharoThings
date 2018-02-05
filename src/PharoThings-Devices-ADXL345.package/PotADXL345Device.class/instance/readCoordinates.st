controlling
readCoordinates
	"The code is copied from C:
	https://www.sunfounder.com/learn/Super_Kit_V2_for_RaspberryPi/lesson-14-adxl345-super-kit-for-raspberrypi.html"
	| x0 x1 y0 y1 z0 z1 acc_x acc_y acc_z |
	x0 := 16rff - (i2cConnection read8BitsAt: 16r32).
	x1 := 16rff - (i2cConnection read8BitsAt: 16r33).
	y0 := 16rff - (i2cConnection read8BitsAt: 16r34).
	y1 := 16rff - (i2cConnection read8BitsAt: 16r35).
	z0 := 16rff - (i2cConnection read8BitsAt: 16r36).
	z1 := 16rff - (i2cConnection read8BitsAt: 16r37).

	acc_x := (x1 << 8) + x0.
	acc_y := (y1 << 8) + y0.
	acc_z := (z1 << 8) + z0.

	^{ acc_x. acc_y. acc_z }
