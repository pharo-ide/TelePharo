*TelePharo-Browser-Client
spawnQueryBrowserOn: aQuery

	^self spawnBrowser: ClyQueryBrowser withState: [ :b | 
		b showResultOf: aQuery]