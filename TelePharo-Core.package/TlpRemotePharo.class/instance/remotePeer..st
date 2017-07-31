accessing
remotePeer: aRemotePeer
	remotePeer := aRemotePeer.
	remoteUIManager := remotePeer evaluate: [ TlpRemoteUIManager installedInstance]