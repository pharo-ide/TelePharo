*TelePharo-Browser-Client
browseImplementorsOf: aSelector 

	self browseQueryResultOf: (ClyMessageImplementors of: {aSelector})