initialization
displayFunction: anArray
	displayFunction := LCD_FUNCTIONSET bitOr: (self hexArrayToNumber: anArray)