I'm a class to control the ultrasonic HCSR-04 sensors.
You can use many ultrasonic sensors at the same time. Just create a new instance with different gpios. 

How Does it Work?
The ultrasonic sensor uses sonar to determine the distance to an object. Here’s what happens:
- The transmitter (trig pin) sends a signal: a high-frequency sound.
- When the signal finds an object, it is reflected and
- the transmitter (echo pin) receives it.
The time between the transmission and reception of the signal allows us to calculate the distance to an object. This is possible because we know the sound’s velocity in the air.

To use:
- inspector
ultrasonic := board installDevice: (PotHCSR04Device triggerPin: 11 gpioHeader echoPin: 13 gpioHeader).

- playground, change the board model to your board
ultrasonic := (RpiBoard3B current) installDevice: (PotHCSR04Device triggerPin: 11 gpioHeader echoPin: 13 gpioHeader).

You can name the object using
name: 'Left sensor'.

To read the distance use one of the method below. 

readDistance. "It will return a number".
printDistance. "It will return a string".

Some of my sensors brothers uses only 1 GPIO to send and read the ultrasonic pulse. 
You can set it using the follow method. It will configure trigger and echo pin at the same GPIO:

ultrasonic := (RpiBoard3B current) installDevice: (PotHCSR04Device signalPin: 13 gpioHeader).

Sometimes I can freeze. You can reboot me using

rebootSensor.