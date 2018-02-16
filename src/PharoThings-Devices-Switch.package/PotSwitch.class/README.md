I am a simple switch device to toggle digital pin value when connected button is pressed and released.
I subscribe on ButtonReleased event and toggle digital value of affected pin. 
Use #toggle message to execute me manualy.

To craete my instance use following expression: 
	
	PotSwitch named: 'red switch' for: gpio1 using: button
	
Internal Representation and Key Implementation Points.

    Instance Variables
	affectedPin:		<IotGPIOPin>
	button:		<IotButton>