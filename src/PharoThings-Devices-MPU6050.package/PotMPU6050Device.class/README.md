I provide implementation of Gyroscope/Accelerator I2C sensor MPU6050.

The code for initialization and sensors reading is based from example:
	https://tutorials-raspberrypi.com/measuring-rotation-and-acceleration-raspberry-pi/

Register map:
	https://www.i2cdevlib.com/devices/mpu6050#registers

To use it: 
sensor := (RpiBoard3B current) installDevice: PotMPU6050Device new.
or on inspector:
sensor := board installDevice: PotMPU6050Device new.

API:
readGyroscope. "#(1540 -9 -211)"
readGyroscopeSkaliert. "#(13.526718 -1.916031 -1.526718)"
readAccelerometer. "#(748 -892 15676)"
readAccelerometerSkaliert. "#(0.033691 -0.051025 0.974121)"
readRotationXY. "#(-3.224775339993247 -2.4755961852044157)"

sensor := (RpiBoard3B current) installDevice: PotMPU6050Device new.
sensor readRollPitchYaw
sensor printRollPitchYaw.
sensor finishRollPitchYaw.