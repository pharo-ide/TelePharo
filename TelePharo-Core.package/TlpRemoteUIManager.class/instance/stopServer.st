controlling
stopServer
	self disableNetworkDiscovery.
	
	self restoreLocalTools.
	connectingServer network destroy.
	connectingServer stop