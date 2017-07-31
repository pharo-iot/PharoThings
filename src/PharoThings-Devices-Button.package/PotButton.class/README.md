I am a simple button device which connects board using energy pin and gpio pin. Energy pin can be power or ground. Dedepding on this I configure pull down or pull up registers accordingly.

I manage state of button using lastState variable with digital value of gpio pin. On every state change I announce appropriate event: IotButtonPressed or IotButtonReleased. I expect that default physical state of button is released. According to this I track correct phycical state and announce right event. When I am connecting to board I start polling loop in background process. 
To check state manually use:
	button checkState
Polling rate can be configured with pollingRate duration variable. 

To create my instances use one of the following messages: 
- fromGroundTo: aGPIOPin
- named: aString fromGroundTo: aGPIOPin
- fromPowerTo: aGPIOPin
- named: aString fromPowerTo: aGPIOPin

To subscribe on events use:
- when: anAnnouncement send: aSymbol to: aSubscriber 
To unsubscribe:
- unsubscribe: aSubscriber  


Internal Representation and Key Implementation Points.

    Instance Variables
	announcer:		<Announcer>
	energyPin:		<IotEnergyPin>
	gpioPin:		<IotGPIOPin>
	lastState:		<Bit>
	pollingRate:		<Duration>
	releaseState:		<Bit>
	stateProcess:		<Process>
