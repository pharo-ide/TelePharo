*TelePharo-Browser-Client
browseClassNamed: aString 
	| classBinding |
	classBinding := self remoteEnvironment bindingOf: aString.
	classBinding ifNil: [ ^self ].

	self openOnClass: classBinding value