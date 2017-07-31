requests
executeDoItMethod: aCompiledMethod withArgs: argArray

	| context |
	
	context := remotePeer createSyncRequestContext.	
	^context sendMessage: (MessageSend 
		receiver: nil selector: #withArgs:executeMethod: arguments: { argArray. aCompiledMethod})