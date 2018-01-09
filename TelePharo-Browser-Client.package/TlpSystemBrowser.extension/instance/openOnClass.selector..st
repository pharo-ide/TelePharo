*TelePharo-Browser-Client
openOnClass: aClass selector: aSymbol

	| method |
	method := aClass lookupSelector: aSymbol.

	^self spawnBrowser: ClyFullBrowser withState: [:browser |
		browser selectMethod: method]