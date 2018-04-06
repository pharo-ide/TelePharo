controlling
enableNetworkDiscoveryBy: aDiscoveryStrategy
	self disableNetworkDiscovery.
	
	discoveryServer := TlpDiscoveryService for: connectingServer using: aDiscoveryStrategy.
	discoveryServer start