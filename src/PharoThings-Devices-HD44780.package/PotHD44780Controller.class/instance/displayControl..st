initialization
displayControl: anArray
	displayControl := LCD_DISPLAYCONTROL bitOr: (self hexArrayToNumber: anArray)