controlling
enableNetworkDiscoveryBy: aDiscoveryStrategy
	self disableNetworkDiscovery.
	
	discoveryService := TlpDiscoveryService for: connectingServer using: aDiscoveryStrategy.
	
	[discoveryService start] on: Error do: [ :err | 
		('error: discovery service unavailable' , String cr, err printString) logCr.
		discoveryService := nil ]