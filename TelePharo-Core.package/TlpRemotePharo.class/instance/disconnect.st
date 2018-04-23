controlling
disconnect

	self restoreLocalTools.		
	remotePeer destroy.
	
	remoteUIManager := nil.
	registeredServices := nil.
	remoteEnvironment := nil.