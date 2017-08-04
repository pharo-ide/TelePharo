registration
registerOnPort: connectingPort
	| remoteManager |
	self isRegistered ifTrue: [ ^self logRegistration ].
	
	remoteManager := TlpRemoteUIManager new.
	remoteManager localUIManager: UIManager default.
		
	remoteManager startServerOn: connectingPort. 
	
	UIManager installRemoteUIManager: remoteManager.
	self logRegistration