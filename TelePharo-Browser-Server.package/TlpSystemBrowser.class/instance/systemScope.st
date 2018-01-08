accessing
systemScope
	^systemScope ifNil: [ 
		systemScope := ClySystemEnvironmentScope of: self systemEnvironment in: self navigationEnvironment named: remoteSystem addressString]