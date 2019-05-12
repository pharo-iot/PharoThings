*PharoThings-Devices-HD44780
configurePotLCD: aDevice
	"Pin mapping:
	---------------------------------------------------------------
	VSS|VDD|V0 |RS |RW | E |D0 |D1 |D2 |D3 |D4 |D5 |D6 |D7 | A | K 
	   |   |   |27 |   |22 |   |   |   |   |25 |24 |23 |18 |   |12 
	                           [8 BIT]          4 BIT             
	---------------------------------------------------------------
	"
   aDevice
		modePin: (self pinWithId: 27); "RS 1 character or 0 lcd commands" 
		clockPin: (self pinWithId: 22);"EN clock enable"
		dataPins: (#(18 23 24 25) collect: [:id | self pinWithId: id]); "D7 D6 D5 D4 [D3 D2 D1 D0] data bit 4bit or [8bit]"
		backlightPin: (self pinWithId: 12).  "BL back light PWM"