*TelePharo-Debugger
unhandledErrorDefaultAction: anException

	self ensureWorkingTools.
	self isRemoteDebuggerConnected ifTrue: [ ^anException debug].
	
	localUIManager unhandledErrorDefaultAction: anException 