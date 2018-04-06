connecting
registerPharoAt: aTCPAddress ifExist: aBlock
	
	| remotePeer remotePharo |
	connectedPharos at: aTCPAddress ifPresent: [:found | ^aBlock value: found].
	
	remotePeer := connectingNetwork remotePeerAt: aTCPAddress.
	remotePharo := TlpRemotePharo peer: remotePeer.
	remotePharo useTools: tools.
	^remotePharo