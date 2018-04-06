controlling
enableNetworkDiscoveryBy: aDiscoveryStrategy
	self disableNetworkDiscovery.
	
	discoveryService := TlpDiscoveryService for: connectingServer using: aDiscoveryStrategy.
	discoveryService start