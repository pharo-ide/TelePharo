controlling
enableNetworkDiscoveryBy: aDiscoveryStrategy
	
	discoveryServer := TlpDiscoveryService for: connectingServer using: aDiscoveryStrategy.
	discoveryServer start