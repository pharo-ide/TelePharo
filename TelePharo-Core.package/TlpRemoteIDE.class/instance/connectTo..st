connecting
connectTo: aTCPAddress 
	
	| remotePeer remotePharo |
	connectedSystems at: aTCPAddress ifPresent: [:found | 
		found isDisconnected ifFalse: [ ^found  ]].
	
	remotePeer := connectingNetwork remotePeerAt: aTCPAddress.
	remotePharo := TlpRemotePharo peer: remotePeer.
	remotePharo registerTools: tools.
	
	connectedSystems at: aTCPAddress put: remotePharo.
	^remotePharo