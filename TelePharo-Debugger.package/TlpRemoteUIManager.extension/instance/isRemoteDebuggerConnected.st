*TelePharo-Debugger
isRemoteDebuggerConnected
	
	| remoteTool |
	remoteTool := Smalltalk tools debugger.
	remoteTool isSeamlessProxy ifFalse: [ ^false ].
	^remoteTool remotePeer isConnected