testing
isConnected
	remoteUIManager ifNil: [ ^false ].
	
	^remotePeer isClosed not and: [ remoteUIManager isRemoteIDERegistered: self ]