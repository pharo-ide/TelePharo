*TelePharo-Browser-Client
openOnClass: aClass selector: aSymbol

	| browser method |
	method := aClass lookupSelector: aSymbol.

	browser := self newBrowser.
	browser selectMethod: method.
	
	^browser