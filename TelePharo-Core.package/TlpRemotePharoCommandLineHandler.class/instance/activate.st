activation
activate
	self activateHelp
		ifTrue: [  ^ self ].
	
	(self hasOption: 'startServerOnPort')
		ifTrue: [ TlpRemoteUIManager registerOnPort: (self optionAt: 'startServerOnPort') asNumber].
	
	(self hasOption: 'stopServer')
		ifTrue: [ TlpRemoteUIManager unregister].