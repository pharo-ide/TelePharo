accessing
systemEnvironment
	^systemEnvironment ifNil: [ 
		systemEnvironment := self navigationEnvironment system]