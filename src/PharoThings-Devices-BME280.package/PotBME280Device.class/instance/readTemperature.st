controlling
readTemperature

	| coeffs t var1 var2 |
	coeffs := self readTempAndPressureCoeffs first.
	self readHumidityCoeffs.
	self setUpReading.
	1 seconds wait.
	t := self readParameters first.
	
	var1 := ((t) / 16384.0 - ((coeffs at: 1) / 1024.0)) * (coeffs at: 2).
	var2 := (((t) / 131072.0 - ((coeffs at: 1) / 8192.0)) * ((t)/131072.0 - ((coeffs at: 1)/8192.0))) * (coeffs at: 3).
	^(var1 + var2) / 5120.0