accessing
navigationEnvironment
	^navigationEnvironment ifNil: [ 
		navigationEnvironment := remoteSystem evaluate: [ ClySystemNavigationEnvironment currentImage ] ]