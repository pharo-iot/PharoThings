I'm a class to control the LCD1602 device. 

My code was based in python code from Adafruit:

https://github.com/adafruit/Adafruit_Python_CharLCD/blob/master/Adafruit_CharLCD/Adafruit_CharLCD.py

To use:
(in inspector)
lcd := board installDevice: PotLCD1602Device new.

(in playground. change the board model  to your board)
lcd := (RpiBoard3B new) installDevice: PotLCD1602Device new.

Sent a message to LCD display:
lcd message: 'your text'

Clear LCD display:
lcd clear

Jump line: 
(1 to begin of first line and 2 to begin of second line)
lcd setCursor: 2