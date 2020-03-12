controlling
restoreLocalTools
	localTools keysAndValuesDo: [ :selector :tool | 
		Smalltalk tools register: tool as: selector].
	remoteIDE := nil.
	self cleanupEnvironmentFromRemoteTool