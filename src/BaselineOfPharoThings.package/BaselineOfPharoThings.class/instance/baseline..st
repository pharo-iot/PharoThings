baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry:v4.0.x' ];
			baseline: 'TelePharo' with: [
				spec repository: 'github://dionisiydk/TelePharo:v0.2.x' ];
			project: 'TelePharoServer' copyFrom: 'TelePharo' with: [
				spec loads: 'Server'];
			project: 'TelePharoClient' copyFrom: 'TelePharo' with: [
				spec loads: 'Client'];
			baseline: 'WiringPi' with: [
				spec 
					repository: 'github://pharo-iot/WiringPi:v0.1.x';
					loads: 'Core' ].		
		
		spec 
			package: 'PharoThings-GTTools' with: [
				spec requires: #('PharoThings-Hardware-Core' ). ];
			package: 'PharoThings-Hardware-Core';
			package: 'PharoThings-Hardware-Core-Tests' with: [
				spec requires: #('PharoThings-Hardware-Core' 'Mocketry' )];
				
			package: #'PharoThings-Devices-I2C' with: [
				spec requires: #('PharoThings-Hardware-Core' ) ];		
		
			package: #'PharoThings-Hardware-RaspberryPi' with: [
				spec requires: #('PharoThings-Hardware-Core' #'WiringPi' ). ];
			
			baseline: 'Firmata' with: [
				spec repository: 'github://pharo-iot/Firmata:v0.1.x'];			
			package: #'PharoThings-Hardware-Arduino' with: [
				spec requires: #('PharoThings-Hardware-Core' #'Firmata' ). ];
						
			package: #'PharoThings-RemoteToolsServer' with: [
				spec requires: #('TelePharoServer' ). ];
			package: #'PharoThings-RemoteToolsClient' with: [
				spec requires: #('PharoThings-RemoteToolsServer' 'TelePharoClient')]. 
			
			self devices do: [ :each | 
				spec package: each key with: [ spec requires: #(#'PharoThings-Hardware-Core'), each value ]].
			
		spec 
			group: 'Hardware' with: #('PharoThings-Hardware-Core' #'PharoThings-Devices-I2C' 'Devices');
			group: 'Raspberry' with: #('Hardware' #'PharoThings-Hardware-RaspberryPi' );
			group: 'Arduino' with: #('Hardware' #'PharoThings-Hardware-Arduino' );
			group: 'Devices' with: (self devices collect: #key);
						
			group: 'LocalDev' with: #('Raspberry' 'Arduino' 'Devices' 'PharoThings-GTTools' 'Tests');
			group: 'RemoteDev' with: #('LocalDev' #'PharoThings-RemoteToolsClient');
			group: 'RemoteDevServer' with: #('Hardware' #'PharoThings-RemoteToolsServer' );
			group: 'Tests' with: #('PharoThings-Hardware-Core-Tests' );
			group: 'default' with: #('LocalDev') ].