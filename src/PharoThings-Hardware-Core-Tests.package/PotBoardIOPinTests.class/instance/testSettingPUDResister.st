tests
testSettingPUDResister
	| resisterClass |
	resisterClass := Mock new.
	pin pudResister: resisterClass.
	
	board should receive setPUDResister: resisterClass into: pin.
	pin pudResister should be: resisterClass