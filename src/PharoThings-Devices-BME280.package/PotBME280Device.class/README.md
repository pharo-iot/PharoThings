I provide implementation of temperature/pressure/humidity sensor BME280Device.

The code for initialization and sensors reading is copied from Python example:
 
	https://github.com/ControlEverythingCommunity/BME280/blob/master/Python/BME280.py
	
In contract to the Pythin example I retrieve all coefficients in connection (setup) time because they are constant parameters. 
	
The method #readParameters returns three values: Celsius, hPa, humidity percents.

Internal Representation and Key Implementation Points.

    Instance Variables
	hCoeffs:		<WordArray> "humidity coefficients"
	pCoeffs:		<WordArray> "pressure coefficients"
	tCoeffs:		<WordArray> "temperature coefficients"