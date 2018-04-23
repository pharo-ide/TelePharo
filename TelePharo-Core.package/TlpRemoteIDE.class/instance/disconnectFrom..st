connecting
disconnectFrom: aRemotePharo
	"Ide to clean completelly any connections and caches in both network sides.
	And after that we should set up fresh peer instance into given remote pharo"
	| freshPeer |
	aRemotePharo disconnect. "Disconnection destroyes remote peer inside network instance"
	freshPeer := connectingNetwork remotePeerAt: aRemotePharo address. 
	aRemotePharo remotePeer: freshPeer "And here we set new updated peer instance into given pharo"