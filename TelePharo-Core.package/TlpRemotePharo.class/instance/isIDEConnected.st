testing
isIDEConnected
	remoteUIManager ifNil: [ ^false ].
	
	^remotePeer isConnected and: [ remoteUIManager isRemoteIDERegistered: self ]