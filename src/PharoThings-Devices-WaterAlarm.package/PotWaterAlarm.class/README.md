I am a simple example of water alarm which tracks the level of humidity using given water sensor (humidity sensor). When the humidity is more the 50% (it is just example) I turn on the alarm pin.

I simply run trackingProcess when I am connecting to the board. It checks in the loop the current humidity level.

To create my instances use following expression: 

	PotWaterAlarm tracking: bmeDevice signaling: gpio1
	
Internal Representation and Key Implementation Points.

    Instance Variables
	alarmPin:		<PotBoardPin>
	waterSensor:		<PotDevice>
	trackingProcess:		<Process>