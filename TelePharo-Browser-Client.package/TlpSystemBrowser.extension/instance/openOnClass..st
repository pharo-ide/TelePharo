*TelePharo-Browser-Client
openOnClass: aClass

	| browser |
	browser := self newBrowser.

	browser selectClass: aClass.
	browser open.
