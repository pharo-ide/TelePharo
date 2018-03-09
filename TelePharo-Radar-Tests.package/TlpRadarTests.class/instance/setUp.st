running
setUp
	super setUp.
	
	remoteUIManager := TlpRemoteUIManager new.
	remoteUIManager startServerOn: 40423.
	discoveryServer := TlpDiscoveryService for: remoteUIManager connectingServer.
	discoveryServer start.
	
	ide := TlpRemoteIDE new.
	radar := ide openRadar. 