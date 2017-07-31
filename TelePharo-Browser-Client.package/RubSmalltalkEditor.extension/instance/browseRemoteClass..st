*TelePharo-Browser-Client
browseRemoteClass: aRemoteScriptContext
	self lineSelectAndEmptyCheck: [^ self].
	aRemoteScriptContext browser browseClassNamed: (self selection string copyWithoutAll: CharacterSet crlf)