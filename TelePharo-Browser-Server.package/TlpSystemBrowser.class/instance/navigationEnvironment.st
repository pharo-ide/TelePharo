accessing
navigationEnvironment
	^navigationEnvironment ifNil: [ 
		navigationEnvironment := remoteSystem evaluate: [ ClyNavigationEnvironment currentImage ] ]