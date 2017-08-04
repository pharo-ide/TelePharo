tools registration
shouldBeRegistered

	UIManager default == self ifFalse: [ 
		self error: 'RemoteUIManager not installed!' ]