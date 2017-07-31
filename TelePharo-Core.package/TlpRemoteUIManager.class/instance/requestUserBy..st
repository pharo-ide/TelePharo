ui-requests
requestUserBy: uiRequestBlock
	self ensureWorkingTools.
	
	self isRemoteIDEConnected ifTrue:[ ^uiRequestBlock value: remoteIDE].
	
	^uiRequestBlock value: localUIManager