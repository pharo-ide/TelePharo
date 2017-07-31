registration
registerOnPort: connectingPort
	| remoteManager |
	remoteManager := TlpRemoteUIManager new.
	remoteManager localUIManager: UIManager default.
		
	remoteManager startServerOn: connectingPort. 
	
	UIManager installRemoteUIManager: remoteManager