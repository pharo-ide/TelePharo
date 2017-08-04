registration
shouldBeRegistered

	self isRegistered ifFalse: [ 
		self error: 'RemoteUIManager not installed!' ]