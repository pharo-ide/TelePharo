tools registration
shouldBeInstalled

	UIManager default == self ifFalse: [ 
		self error: 'RemoteUIManager not installed!' ]