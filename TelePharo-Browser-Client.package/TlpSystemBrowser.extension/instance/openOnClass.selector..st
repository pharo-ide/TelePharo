*TelePharo-Browser-Client
openOnClass: aClass selector: aSymbol

	| method |
	method := aClass lookupSelector: aSymbol.

	^self spawnBrowser: ClyFullBrowserMorph withState: [:browser |
		browser selectMethod: method]