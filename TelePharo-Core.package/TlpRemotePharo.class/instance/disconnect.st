controlling
disconnect

	self restoreLocalTools.		
	remotePeer destroy.
	
	registeredServices := nil.
	remoteEnvironment := nil.