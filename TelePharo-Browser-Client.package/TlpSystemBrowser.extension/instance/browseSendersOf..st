*TelePharo-Browser-Client
browseSendersOf: aSelector

	self spawnQueryBrowserOn: (ClyMessageSendersQuery of: aSelector)