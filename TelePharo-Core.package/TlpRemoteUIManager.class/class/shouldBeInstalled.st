registration
shouldBeInstalled

	UIManager default class == TlpRemoteUIManager ifFalse: [ 
		self error: 'RemoteUIManager not installed!' ]