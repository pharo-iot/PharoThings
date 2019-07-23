initialization
configureDefaultPeripherals
	"Pin mapping:
	---------------------------------------------------------------
	VSS|VDD|V0 |RS |RW | E |D0 |D1 |D2 |D3 |D4 |D5 |D6 |D7 | A | K 
	   |   |   |27 |   |22 |   |   |   |   |25 |24 |23 |18 |   |12 
	                           [8 BIT]          4 BIT             
	---------------------------------------------------------------" 
	modePin := 13 gpioHeader.	"RS 1 character or 0 lcd commands"
	clockPin := 15 gpioHeader.	"EN clock enable"
	dataPins := #(12 16 18 22) collect: [ :id | id gpioHeader ]. "D7 D6 D5 D4 [D3 D2 D1 D0] data bit 4bit or [8bit]"
	backlightPin := 32 gpioHeader	"BL backlight PWM"