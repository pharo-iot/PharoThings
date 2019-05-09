initialization
initializeRegisters
	"Initialize the display"
	self writeCommand: 16r33.
	self writeCommand: 16r32.
	"Write registers"
	self writeCommand: ((instructionDic at: #LCD_DISPLAYCONTROL) bitOr: displayControl).
	self writeCommand: ((instructionDic at: #LCD_FUNCTIONSET) bitOr: displayFunction).
	self writeCommand: ((instructionDic at: #LCD_ENTRYMODESET) bitOr: displayMode).
	self clearDisplay