tests
testDetectingRemotePharo
	radar start.
	remoteUIManager enableNetworkDiscoveryBy: (
		TlpStaticAddressDiscoveryStrategy ip: (#[127 0 0 1] as: SocketAddress)).
		
	1 seconds wait.
	
	self assert: radar detectedPharos size equals: 1
	
