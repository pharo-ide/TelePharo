testing
isDisconnected

	^remotePeer isClosed or: [ (remoteUIManager isRemoteIDERegistered: self) not ]