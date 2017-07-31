*TelePharo-Core
remoteToolNamed: aNameSelector
	"Register a tool class under given name"
	^tools at: aNameSelector ifAbsent: [ nil ]