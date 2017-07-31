baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry:v4.0.x' ];
			baseline: 'TelePharo' with: [
				spec repository: 'github://dionisiydk/TelePharo:v0.1.x' ];
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
			package: #'PharoThings-Hardware-RaspberryPi' with: [
				spec requires: #('PharoThings-Hardware-Core' #'WiringPi-Core' ). ];
			package: #'PharoThings-RemoteToolsServer' with: [
				spec requires: #('TelePharoServer' ). ];
			package: #'PharoThings-RemoteToolsClient' with: [
				spec requires: #('PharoThings-RemoteToolsServer' 'TelePharoClient'). ];
			package: #'WiringPi-Core'.
		spec 
			group: 'Hardware' with: #('PharoThings-Hardware-Core' #'PharoThings-Hardware-RaspberryPi' #'PharoThings-Devices-Button' #'PharoThings-Devices-Switch' );
			group: 'LocalTools' with: #('Hardware' 'PharoThings-GTTools' );
			group: 'RemoteToolsClient' with: #('Hardware' 'LocalTools' #'PharoThings-RemoteToolsClient' 'Tests');
			group: 'RemoteToolsServer' with: #('Hardware' #'PharoThings-RemoteToolsServer' );
			group: 'Tests' with: #('PharoThings-Hardware-Core-Tests' );
			group: 'default' with: #('LocalTools' 'Tests' )].