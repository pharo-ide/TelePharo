*TelePharo-Browser-Client
browseImplementorsOf: aSelector 

	self spawnQueryBrowserOn: (ClyMessageImplementors of: {aSelector})