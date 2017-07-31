accessing
remoteEnvironment
	^remoteEnvironment ifNil: [
		remoteEnvironment := remotePeer remoteEnvironment] 