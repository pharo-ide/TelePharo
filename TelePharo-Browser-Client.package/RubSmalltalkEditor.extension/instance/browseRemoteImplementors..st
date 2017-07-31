*TelePharo-Browser-Client
browseRemoteImplementors: aRemoteScriptContext
	"Open an implementors browser on the selected selector"

	| selector |
	self lineSelectAndEmptyCheck: [^ self].
	(selector := self selectedSelector) == nil ifTrue: [^ textArea flash].
	
	aRemoteScriptContext browser browseImplementorsOf: selector