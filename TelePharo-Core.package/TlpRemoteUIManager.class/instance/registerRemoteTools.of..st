tools registration
registerRemoteTools: remoteToolsDictionary of: aRemotePharoWithIDE

	remoteIDE := aRemotePharoWithIDE.
	
	remoteToolsDictionary keysAndValuesDo: [ :name :tool |
		self registerRemoteTool: tool as: name ]