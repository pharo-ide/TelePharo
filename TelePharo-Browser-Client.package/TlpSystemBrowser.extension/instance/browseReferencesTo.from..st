*TelePharo-Browser-Client
browseReferencesTo: aSelector from: anEnvironment

	| classBinding |
	aSelector first isUppercase ifTrue: [ 
		classBinding := anEnvironment bindingOf: aSelector.
		classBinding ifNotNil: [ 
			^self spawnQueryBrowserOn: (ClyClassReferencesQuery of: classBinding)]].
		
	self browseSendersOf: aSelector