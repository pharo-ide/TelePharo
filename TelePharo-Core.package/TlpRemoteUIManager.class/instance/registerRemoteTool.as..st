tools registration
registerRemoteTool: aSeamlessProxy as: aNameSelector
	| existingTool |
	self shouldBeRegistered.
	existingTool := Smalltalk tools remoteToolNamed: aNameSelector.
	existingTool isSeamlessProxy
		ifFalse:
			[ "otherwise new remote tools are connected" 
			localTools at: aNameSelector ifAbsentPut: existingTool ].
	Smalltalk tools registerRemoteTool: aSeamlessProxy as: aNameSelector.
	(Smalltalk tools remoteToolNamed: aNameSelector) isSeamlessProxy
		ifTrue:
			[ "When a new connection is made, the annoucers of Seamless on the server side need to be reseted, because if the network is broken, the server keeps the wrong old announcers" 
			self cleanupEnvironmentFromRemoteTool ]