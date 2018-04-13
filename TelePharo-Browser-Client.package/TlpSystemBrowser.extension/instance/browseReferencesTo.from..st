*TelePharo-Browser-Client
browseReferencesTo: aSelector from: anEnvironment

	| classBinding |
	aSelector first isUppercase ifTrue: [ 
		classBinding := anEnvironment bindingOf: aSelector.
		classBinding ifNotNil: [ 
			^self spawnQueryBrowserOn: (ClyClassReferences of: classBinding)]].
		
	self browseSendersOf: aSelector