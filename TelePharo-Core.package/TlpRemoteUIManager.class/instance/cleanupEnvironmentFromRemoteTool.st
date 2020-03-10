tools registration
cleanupEnvironmentFromRemoteTool
		"This method resets all announcers Seamless. When the network is broken, the server keeps the old announcers, so we need reset them"
	SystemAnnouncer uniqueInstance subscriptions subscriptions
   select: [ :each | each subscriber isSeamlessProxy ]
   thenDo: [ :each | SystemAnnouncer uniqueInstance unsubscribe: each subscriber].
	
	