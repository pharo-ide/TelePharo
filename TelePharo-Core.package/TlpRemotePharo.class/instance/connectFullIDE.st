controlling
connectFullIDE
	self connect.
	
	remoteUIManager := remotePeer evaluate: [ TlpRemoteUIManager registeredInstance].
	self registerTools