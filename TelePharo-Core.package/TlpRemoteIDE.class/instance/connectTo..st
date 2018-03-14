connecting
connectTo: aTCPAddress 
	
	| remotePeer remotePharo |
	connectedPharos at: aTCPAddress ifPresent: [:found | 
		found isDisconnected ifFalse: [ ^found  ]].
	
	remotePeer := connectingNetwork remotePeerAt: aTCPAddress.
	remotePharo := TlpRemotePharo peer: remotePeer.
	remotePharo registerTools: tools.
	
	connectedPharos at: aTCPAddress put: remotePharo.
	^remotePharo