tools registration
registerTools: toolsDictionary
	
	tools := toolsDictionary collect: [ :toolClass | toolClass for: self  ].
	
	remoteUIManager 
		registerRemoteTools: tools asTransferredByValue 
		of: self