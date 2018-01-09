activation
activate
	self activateHelp
		ifTrue: [  ^ self ].
	
	(self hasOption: 'disableSlowPlugins')
		ifTrue: [ 
			ClyNavigationEnvironment reset.
			ClySystemEnvironmentPlugin disableSlowPlugins].

	(self hasOption: 'enableSlowPlugins')
		ifTrue: [ 
			ClyNavigationEnvironment reset.
			ClySystemEnvironmentPlugin enableSlowPlugins].

	(self hasOption: 'startServerOnPort')
		ifTrue: [ TlpRemoteUIManager registerOnPort: (self optionAt: 'startServerOnPort') asNumber].
			
	(self hasOption: 'stopServer')
		ifTrue: [ TlpRemoteUIManager unregister].