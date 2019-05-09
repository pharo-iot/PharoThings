initialization
setPin: anObject at: aSymbol
	gpioDic ifNil: [gpioDic := Dictionary new].
	gpioDic add: aSymbol -> anObject 