*TelePharo-Browser-Client
browseImplementorsOf: aSelector 

	self browseMethodsFromQuery: (ClyMessageImplementors of: {aSelector})