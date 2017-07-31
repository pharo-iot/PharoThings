# PharoThings

Live programming platform for IoT projects based on [Pharo](http://pharo.org).
It includes:
- development tools to lively program, explore and debug remote boards ([TelePharo](https://github.com/dionisiydk/TelePharo))
- board modeling library which simplifies board configuration

    - Raspberry, driven by [WiringPi library](http://wiringpi.com)
    - Arduino, driven by [Firmata](https://github.com/firmata/arduino)
    - Beaglebone, soon

## Installation on Raspberry

1) Download Pharo 6 and install server part of PharoThings:
```Smalltalk
Metacello new
  baseline: 'PharoThings';
  repository: 'github://dionisiydk/PharoThings';
  load: 'RemoteToolsServer'
```
Save image.

2) Download ArmVM to run image on your board: http://files.pharo.org/vm/pharo-spur32/linux/armv6/latest.zip.

3) Copy saved image and ArmVM to your board and run it:
```bash
pharo --headless Server.image  remotePharo --startServerOnPort=40423
```
You can also save image with running server:
```Smalltalk
TlpRemoteUIManager registerOnPort: 40423
```
In that case command line option --startServerOnPort is not needed.

## Connecting to board
Install client part of PharoThings to your Pharo image:
```Smalltalk
Metacello new
  baseline: 'PharoThings';
  repository: 'github://dionisiydk/PharoThings';
  load: 'RemoteToolsClient'
```
Connect to running Raspberry image from playground:
```Smalltalk
remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[193 51 236 167] port: 40423)
```
Then inspect board:
```Smalltalk
remoteBoard := remotePharo evaluate: [ RpiBoardBRev1 current].
remoteBoard inspect
```
Currently only model B is implemented (with revision 1 and 2). But this code will not break on other boards. In that case pins will point to wrong phisical pins of your board. But tool will show working UI. And you will be able to control board by low level library (like WiringPi) using remote playground.

By the way modeling specific board is very simple task (will be explained later). 
You are free to support it by yourself and contribute to project.



