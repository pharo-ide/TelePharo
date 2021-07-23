*TelePharo-Browser-Client
spawnQueryBrowserOn: aQuery

	^self spawnBrowser: ClyFullBrowserMorph withState: [ :b | 
		b showResultOf: aQuery]