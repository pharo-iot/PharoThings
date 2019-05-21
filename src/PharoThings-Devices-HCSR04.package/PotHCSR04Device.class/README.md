I'm a class to control the ultrasonic HCSR-04 sensors.
You can use many ultrasonic sensors at the same time. Just change the PINs id. 

To use:
(inspector)
ultrasonic := board installDevice: PotHCSR04Device new.

(playground. change the board model  to your board)
ultrasonic := (RpiBoard3B current) installDevice: PotHCSR04Device new.

You can name the object using
name: 'Left sensor'

To read the distance use one of the method below. 

readDistance. "It will return a number"
printDistance. "It will return a string"

I'm using the GPIO0 to triggerPin and GPIO21 to echoPin as default configuration.
If you want to choose your own PIN position, you can set using the PIN Id (BCM number):

triggerPin: 27 echoPin: 17.

Some of my sensors brothers uses only 1 GPIO to send and read the ultrasonic pulse. 
You can set it using the method:

signalPin: 22.

Sometimes I can freeze. You can reboot me using

rebootSensor.