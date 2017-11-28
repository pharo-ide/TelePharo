*TelePharo-Browser-Client
browseImplementorsOf: aSelector 

	self browseQuery: (ClyMessageImplementors of: {aSelector})