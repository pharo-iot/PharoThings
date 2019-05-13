initialization
displayMode: anArray
	displayMode := LCD_ENTRYMODESET bitOr: (self hexArrayToNumber: anArray)