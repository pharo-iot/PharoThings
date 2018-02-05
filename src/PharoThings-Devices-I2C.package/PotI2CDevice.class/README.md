My subclasses model physical devices which are controlled by I2C protocol.

So in board connecting logic I open I2C connection and close it when device is removed from the board instance.

I2C connection instance is created by board driver and should support polymorphic bit IO operations.

Subclasses should extend #connect method with appropriate logic for device registers initialization according to their physical protocol.

My instances should be created using physical address of device: 

	PotI2CDevice on: 16r53.

Or they should define default address on class side: 

- defaultI2CAddress

Then instance can be created using simple #new.

	PotI2CDevice new.

Internal Representation and Key Implementation Points.

    Instance Variables
	i2cAddress:		<SmallInteger>
	i2cConnection:		<Object>