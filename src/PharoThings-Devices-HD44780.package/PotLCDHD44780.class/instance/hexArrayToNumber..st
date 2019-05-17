initialization
hexArrayToNumber: anArray
	^ anArray inject: 0 into:  [:each : hex | hex bitOr: each]
	"hexArrayToNumber: #(16r06 16r01 16r08) ^16r0F"