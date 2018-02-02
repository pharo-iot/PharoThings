controlling
connect
	super connect.
	
	i2cConnection write8BitsAt: 16r31 data: 16r0b.
	i2cConnection write8BitsAt: 16r2d data: 16r08.
	i2cConnection write8BitsAt: 16r1e data: 16r00.
	i2cConnection write8BitsAt: 16r1f data: 16r00.
	i2cConnection write8BitsAt: 16r20 data: 16r00.
	i2cConnection write8BitsAt: 16r21 data: 16r00.
	i2cConnection write8BitsAt: 16r22 data: 16r00.
	i2cConnection write8BitsAt: 16r23 data: 16r00.
	i2cConnection write8BitsAt: 16r24 data: 16r01.
	i2cConnection write8BitsAt: 16r25 data: 16r0f.
	i2cConnection write8BitsAt: 16r26 data: 16r2b.
	i2cConnection write8BitsAt: 16r27 data: 16r00.
	i2cConnection write8BitsAt: 16r28 data: 16r09.
	i2cConnection write8BitsAt: 16r29 data: 16rff.
	i2cConnection write8BitsAt: 16r2a data: 16r80.
	i2cConnection write8BitsAt: 16r2c data: 16r0a.
	i2cConnection write8BitsAt: 16r2f data: 16r00.
	i2cConnection write8BitsAt: 16r38 data: 16r9f.