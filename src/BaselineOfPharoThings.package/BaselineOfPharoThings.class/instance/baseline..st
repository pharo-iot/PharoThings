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
				spec loads: 'Client'].

		spec 
			package: #'PharoThings-Devices-Button' with: [
				spec requires: #('PharoThings-Hardware-Core' ). ];
			package: #'PharoThings-Devices-Switch' with: [
				spec requires: #(#'PharoThings-Devices-Button' ). ];
			package: 'PharoThings-GTTools' with: [
				spec requires: #('PharoThings-Hardware-Core' ). ];
			package: 'PharoThings-Hardware-Core';
			package: 'PharoThings-Hardware-Core-Tests' with: [
				spec requires: #('PharoThings-Hardware-Core' 'Mocketry' ). ];
			
			baseline: 'WiringPi' with: [
				spec 
					repository: 'github://pharo-iot/WiringPi:v0.1.x';
					loads: 'Core' ];			
			package: #'PharoThings-Hardware-RaspberryPi' with: [
				spec requires: #('PharoThings-Hardware-Core' #'WiringPi' ). ];
			
			baseline: 'Firmata' with: [
				spec repository: 'github://pharo-iot/Firmata:v0.1.x'];			
			package: #'PharoThings-Hardware-Arduino' with: [
				spec requires: #('PharoThings-Hardware-Core' #'Firmata' ). ];
						
			package: #'PharoThings-RemoteToolsServer' with: [
				spec requires: #('TelePharoServer' ). ];
			package: #'PharoThings-RemoteToolsClient' with: [
				spec requires: #('PharoThings-RemoteToolsServer' 'TelePharoClient'). ].
		spec 
			group: 'Hardware' with: #('PharoThings-Hardware-Core' #'PharoThings-Devices-Button' #'PharoThings-Devices-Switch' );
			group: 'Raspberry' with: #('Hardware' #'PharoThings-Hardware-RaspberryPi' );
			group: 'Arduino' with: #('Hardware' #'PharoThings-Hardware-Arduino' );
			
			group: 'LocalDev' with: #('Raspberry' 'Arduino' 'PharoThings-GTTools' 'Tests');
			group: 'RemoteDev' with: #('LocalDev' #'PharoThings-RemoteToolsClient');
			group: 'RemoteDevServer' with: #('Hardware' #'PharoThings-RemoteToolsServer' );
			group: 'Tests' with: #('PharoThings-Hardware-Core-Tests' );
			group: 'default' with: #('RemoteDev')].