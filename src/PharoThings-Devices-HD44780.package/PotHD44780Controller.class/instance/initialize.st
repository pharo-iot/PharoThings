initialization
initialize
	
	instructionDic := Dictionary new.
	instructionDic 
		"Commands"
		add: (#LCD_CLEARDISPLAY -> 16r01);
		add: (#LCD_RETURNHOME -> 16r02);
		add: (#LCD_ENTRYMODESET -> 16r04);
		add: (#LCD_DISPLAYCONTROL -> 16r08);
		add: (#LCD_CURSORSHIFT -> 16r10);
		add: (#LCD_FUNCTIONSET -> 16r20);
		add: (#LCD_SETCGRAMADDR -> 16r40);
		add: (#LCD_SETDDRAMADDR -> 16r80);
		"Entry flags"
		add: (#LCD_ENTRYRIGHT -> 16r00);
		add: (#LCD_ENTRYLEFT -> 16r02);
		add: (#LCD_ENTRYSHIFTINCREMENT -> 16r01);
		add: (#LCD_ENTRYSHIFTDECREMENT -> 16r00);
		"Control flags"
		add: (#LCD_DISPLAYON -> 16r04);
		add: (#LCD_DISPLAYOFF -> 16r00);
		add: (#LCD_CURSORON -> 16r02);
		add: (#LCD_CURSOROFF -> 16r00);
		add: (#LCD_BLINKON -> 16r01);
		add: (#LCD_BLINKOFF -> 16r00);
		"Move flags"
		add: (#LCD_DISPLAYMOVE -> 16r08);
		add: (#LCD_CURSORMOVE -> 16r00);
		add: (#LCD_MOVERIGHT -> 16r04);
		add: (#LCD_MOVELEFT -> 16r00);
		"Function set flags"
		add: (#LCD_8BITMODE -> 16r10);
		add: (#LCD_4BITMODE -> 16r00);
		add: (#LCD_2LINE -> 16r08);
		add: (#LCD_1LINE -> 16r00);
		add: (#LCD_5x10DOTS -> 16r04);
		add: (#LCD_5x8DOTS -> 16r00);
		"Offset for up to 4 rows"
		add: (#LCD_ROW_OFFSETS -> #(16r00 16r40 16r14 16r54));
		add: (#LCD_BACKLIGHT -> 16r08);
		add: (#LCD_NOBACKLIGHT -> 16r00);
		"Enable bit"
		add: (#LCD_ENABLEBIT -> 16r04);
		"Read/Write bit"
		add: (#LCD_READWRITEBIT -> 16r02);
		"Register select bit"
		add: (#LCD_REGISTERBIT -> 16r01)