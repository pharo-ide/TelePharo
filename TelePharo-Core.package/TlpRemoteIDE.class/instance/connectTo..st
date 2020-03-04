connecting
connectTo: aTCPAddress 
	
	| remotePeer remotePharo |
	connectedSystems at: aTCPAddress ifPresent: [:found | 
		found isDisconnected ifFalse: [ ^found  ]].
	
	remotePeer := connectingNetwork remotePeerAt: aTCPAddress.
	remotePharo := TlpRemotePharo peer: remotePeer.
	remotePharo registerTools: tools.
	remotePharo evaluate: [TlpRemotePharo resetCalypsoAnnouncers].
	"When a new connection is made, the annoucers of Calypso on the server side need to be reseted, because if the network is broken, the server keeps the wrong old announcers"
	connectedSystems at: aTCPAddress put: remotePharo.
	^remotePharo