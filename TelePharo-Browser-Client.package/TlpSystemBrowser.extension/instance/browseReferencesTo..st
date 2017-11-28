*TelePharo-Browser-Client
browseReferencesTo: aSelector 

	| classBinding |
	aSelector first isUppercase ifTrue: [ 
		classBinding := self systemEnvironment bindingOf: aSelector.
		classBinding ifNotNil: [ 
			^self browseQuery: (ClyClassReferences of: {classBinding})]].
		
	self browseSendersOf: aSelector