tools registration
registerTools: toolsDictionary
	
	self useTools: toolsDictionary.
	
	remoteUIManager 
		registerRemoteTools: tools asTransferredByValue 
		of: self