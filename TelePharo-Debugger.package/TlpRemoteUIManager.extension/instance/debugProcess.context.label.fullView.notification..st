*TelePharo-Debugger
debugProcess: process context: context label: title fullView: bool notification: notificationString
	self ensureWorkingTools.
	self isRemoteDebuggerConnected
		ifTrue:
			[ ^ self
					openInterractiveDebuggerOn: process
					context: context
					label: title
					fullView: bool
					notification: notificationString].
	
	localUIManager 
		debugProcess: process 
		context: context 
		label: title 
		fullView: bool 
		notification: notificationString