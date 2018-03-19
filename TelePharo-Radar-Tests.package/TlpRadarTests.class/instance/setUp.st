running
setUp
	super setUp.
	
	remoteUIManager := TlpRemoteUIManager new.
	remoteUIManager startServerOn: 40423.
	
	ide := TlpRemoteIDE new.
	radar := TlpRadar for: ide