initialization
displayControl: anArray
	displayControl := LCD_DISPLAYCONTROL bitOr: (self bitOrArray: anArray)