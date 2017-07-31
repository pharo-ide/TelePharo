tools registration
isRemoteIDEConnected
	remoteIDE ifNil: [ ^false ].
		 
	^remoteIDE remotePeer isConnected