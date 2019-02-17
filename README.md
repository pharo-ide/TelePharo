# TelePharo
[![Build Status](https://travis-ci.org/pharo-ide/TelePharo.svg?branch=master)](https://travis-ci.org/pharo-ide/TelePharo)

Complete toolset for remote development of Pharo images. It includes:

- remote playground
- remote browser
- remote debugger
- remote inspector
- remote process browser

## Server installation
Server part of project should be installed on target image:
```Smalltalk
Metacello new
  baseline: 'TelePharo';
  repository: 'github://pharo-ide/TelePharo:pharo6';
  load: 'Server'.
```
Then server should be started on port where client image can connect:
```Smalltalk
TlpRemoteUIManager registerOnPort: 40423
```
Image can be saved with running server. Or you can use command line option to start image with server:
```bash
./pharo PharoServer.image remotePharo --startServerOnPort=40423
```
### Slow servers
In case when your remote machine is slow you can disable slow plugins of browser. For example Raspberry machines ~10x times slower then x86 computers and some code analysis can affect general performance of remote IDE. To optimize such scenarios evaluate following script on prepared server image:
```Smalltalk
ClyNavigationEnvironment reset.
ClySystemEnvironmentPlugin disableSlowPlugins
```
Or you can always disable slow plugins from command line using extra option #disableSlowPlugins:
```bash
./pharo PharoServer.image remotePharo --startServerOnPort=40423 --disableSlowPlugins
```
## Client connection
On IDE image client part of project should be installed:
```Smalltalk
Metacello new
  baseline: 'TelePharo';
  repository: 'github://pharo-ide/TelePharo:pharo6';
  load: 'Client'.
```
And then you can connect Pharo to remote image:
```Smalltalk
remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423)
```
It registers local debugger and browser on remote image:

Any error on remote image will open debugger on client image with remote process stack.

Any browser request on remote image will open browser on client image with remote packages and classes.

User requests from server are redirected to client. Any confirm or inform requests from remote image will be shown on client. For example author name request will be shown on client image where user can type own name remotely.
## Tools
With remotePharo instance you can open remote system browser, playground or process browser:
```Smalltalk
remotePharo openPlayground.
remotePharo openBrowser.
remotePharo openProcessBrowser
```
And you can evaluate remote scripts:
```Smalltalk
remotePharo evaluateAsync: [ [1/0] fork ].
remotePharo evaluate: [ 1 + 2 ] "==> 3".
remotePharo evaluate: [ 0@0 corner: 2@3 ] "==> aSeamlessProxy on remote rectangle".
```
For details on scripting features look at [Seamless project](https://github.com/dionisiydk/Seamless) which is underlying communication layer of TelePharo.

Some operations are not working remotely. For example #debugIt command and refactorings lead to errors. But in future they will be supported

# Saving changes
Save remote Pharo image using:
```Smalltalk
remotePharo saveImage
```
Notice that it will save image with running server. And when you will restart Pharo next time the IDE server will be running.
You can use command line option to stop the running server in that case:
```bash
./pharo PharoServer.image remotePharo --stopServer
```
In many cases save image is not enough. You want keep produced remote changes in your project.
For this you will need import the remote code changes into your local environment:
```Smalltalk
remotePharo applyChangesToClient
```
And then commit them into code repository (using Iceberg for example).
