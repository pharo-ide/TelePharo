tools registration
registerRemoteTool: aSeamlessProxy as: aNameSelector

	| existingTool |
	self shouldBeInstalled.
	existingTool := Smalltalk tools remoteToolNamed: aNameSelector.
	existingTool isSeamlessProxy ifFalse: [ "otherwise new remote tools are connected"
		localTools at: aNameSelector ifAbsentPut: existingTool].
		
	Smalltalk tools registerRemoteTool: aSeamlessProxy as: aNameSelector