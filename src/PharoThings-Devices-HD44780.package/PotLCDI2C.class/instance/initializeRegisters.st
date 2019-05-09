initialization
initializeRegisters
	"Initialize the display"
	self writeCommand: 16r03.
	self writeCommand: 16r03.
	self writeCommand: 16r03.
	self writeCommand: 16r02.
	"Write registers"
	self writeCommand: ((instructionDic at: #LCD_FUNCTIONSET) bitOr: displayFunction).
	self writeCommand: ((instructionDic at: #LCD_DISPLAYCONTROL) bitOr: displayControl).
	self clearDisplay.
	self writeCommand: ((instructionDic at: #LCD_ENTRYMODESET) bitOr: displayMode)