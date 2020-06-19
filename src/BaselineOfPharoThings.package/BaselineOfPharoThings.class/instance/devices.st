baselines
devices

	^{
		#'PharoThings-Devices-Button' -> #().
		#'PharoThings-Devices-Switch' -> #(#'PharoThings-Devices-Button').
		#'PharoThings-Devices-WaterAlarm' ->  #(#'PharoThings-Apps').
		#'PharoThings-Devices-HCSR04' -> #().
		#'PharoThings-Devices-ADXL345' -> #(#'PharoThings-Devices-I2C').
		#'PharoThings-Devices-MCP9808' -> #(#'PharoThings-Devices-I2C').
		#'PharoThings-Devices-BME280' -> #(#'PharoThings-Devices-I2C').
		#'PharoThings-Devices-HD44780' -> #(#'PharoThings-Devices-I2C')
	}