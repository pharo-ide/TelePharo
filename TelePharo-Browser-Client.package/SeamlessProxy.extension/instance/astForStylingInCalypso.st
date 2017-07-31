*TelePharo-Browser-Client
astForStylingInCalypso
	"it simplified approach for styling remote methods without introducing special proxies for methods"
	| methodClass ast |
	methodClass := self origin.
	
	ast := RBParser 
		parseMethod: self sourceCode 
		onError: [ :msg :pos | ^self decompile ].
	ast compilationContext: (SeamlessRemoteClassCompilationContext on: methodClass).
	ast doSemanticAnalysis.

	^ast