running
setUp
	super setUp.
	
	remoteUIManager := TlpRemoteUIManager new.
	remoteUIManager startServerOn: 40422.
	
	ide := TlpRemoteIDE new.
	radar := TlpRadar for: ide