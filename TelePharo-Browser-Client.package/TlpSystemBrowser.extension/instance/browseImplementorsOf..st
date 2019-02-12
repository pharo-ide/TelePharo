*TelePharo-Browser-Client
browseImplementorsOf: aSelector 

	self spawnQueryBrowserOn: (ClyMessageImplementorsQuery of: aSelector)