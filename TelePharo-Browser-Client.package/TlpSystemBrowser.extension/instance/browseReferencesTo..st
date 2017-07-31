*TelePharo-Browser-Client
browseReferencesTo: aSelector 

	| classBinding |
	aSelector first isUppercase ifTrue: [ 
		classBinding := self remoteEnvironment bindingOf: aSelector.
		classBinding ifNotNil: [ 
			^self browseMethodsFromQuery: (ClyClassReferences of: {classBinding})]].
		
	self browseSendersOf: aSelector