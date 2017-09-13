*TelePharo-Browser-Client
browseClassNamed: aString 
	| classBinding |
	classBinding := self systemEnvironment bindingOf: aString.
	classBinding ifNil: [ ^self ].

	self openOnClass: classBinding value