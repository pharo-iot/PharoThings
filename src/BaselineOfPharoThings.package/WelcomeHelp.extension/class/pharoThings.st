*BaselineOfPharoThings
pharoThings
	^ HelpTopic 
		title: 'PharoThings Quickstart guide'
		contents: (self heading: 'PharoThings Quickstart guide'),

'Welcome to Pharo, an immersive live programming environment.

PharoThings is a live programming platform for IoT projects based on Pharo. 

It includes:
- Development tools to lively program, explore and debug remote boards (based on TelePharo)
- Board modeling library which simplifies board configuration

For more information, please visit here: ', (self url: 'https://github.com/pharo-iot/PharoThings'),

(self subheading: 'Playing with PharoThings Booklet'), 
'You can start playing with LEDs, sensors and learn how to build your Mini-Weather Station to shows the temperature and other parameters in an LCD display, and send the data to a cloud server.
All this content and lessons are written in the PharoThings Booklet, you can access it here: ', (self url: 'https://github.com/SquareBracketAssociates/Booklet-APharoThingsTutorial'),

(self subheading: 'Starting the server'), 
'Option 1: Go to your remote device and start PharoThings by command line:
pharo --headless Server.image  remotePharo --startServerOnPort=40423

* Use --headless to OSX/ARM or --nodisplay to Linux

', 
'Option 2: Open Pharo UI in your remote device and start PharoThings in a playground:',
(self codeSnippet: 'TlpRemoteUIManager registerOnPort: 40423.
'),

(self subheading: 'Connecting in PharoThings server by IP'), 
(self codeSnippet: 'remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423).
'), 

(self subheading: 'Connecting in PharoThings server by Hostname'), 
(self codeSnippet: 'ip := NetNameResolver addressForName: ''pharothings-01''.
remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: ip port: 40423).
'), 

(self subheading: 'Inspect the remote Raspberry Pi GPIO board'), 
'If you dont receive any error, this means that you are connected. Now you can inspect the physical board of your Raspberry Pi:
',
(self codeSnippet: 'remoteBoard := remotePharo evaluate: [ RpiBoard3B current].
remoteBoard inspect.
'), 

(self subheading: 'Working remotely'), 
'You can also call the Remote Playground, Remote System Browser and Remote Process Browser:',
(self codeSnippet: 'remotePharo openPlayground.
remotePharo openBrowser.
remotePharo openProcessBrowser.
'), 

(self subheading: 'Copy past code'), 
(self codeSnippet: '"Connecting in PharoThings server by IP" 
remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423).

"Connecting in PharoThings server by Hostname"
ip := NetNameResolver addressForName: ''pharoiot-01''.
remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: ip port: 40423).

"Inspect remote board"
remoteBoard := remotePharo evaluate: [ RpiBoard3B current ].
remoteBoard inspect.

"Open remote Playground, remote Browser and remote Process Browser"
remotePharo openPlayground.
remotePharo openBrowser.
remotePharo openProcessBrowser.

"Save the remote image"
remotePharo saveImage.

"Disconnect all remote sessions"
TlpRemoteIDE disconnectAll.
').