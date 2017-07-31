accessing
remoteEnvironment
	^remoteEnvironment ifNil: [ 
		remoteEnvironment := remoteSystem remoteEnvironment]