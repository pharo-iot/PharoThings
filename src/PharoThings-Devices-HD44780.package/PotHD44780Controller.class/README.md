I'm a class to control the HD44780 chipset based devices. 

My code was based in python code from Adafruit:

https://github.com/adafruit/Adafruit_Python_CharLCD/blob/master/Adafruit_CharLCD/Adafruit_CharLCD.py

To use:
(inspector)
lcd := board installDevice: PotLCD1602Device new.
or to I2C
lcd := board installDevice: PotLCD1602DeviceI2C new.

(playground. change the board model  to your board)
lcd := (RpiBoard3B new) installDevice: PotLCD1602Device new.
or to I2C
lcd := (RpiBoard3B new) installDevice: PotLCD1602DeviceI2C new.

Sent a message to LCD display:
lcd showMessage: 
'your text first row
your text second row'

Clear LCD display:
lcd clearDisplay