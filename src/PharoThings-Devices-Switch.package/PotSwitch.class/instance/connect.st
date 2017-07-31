controlling
connect
	affectedPin beDigitalOutput.
	affectedPin value: 0.
	
	button when: PotButtonReleased send: #toggle to: self