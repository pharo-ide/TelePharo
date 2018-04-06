tests
testDetectingRemotePharo
	radar start.
	1 seconds wait.
	remoteUIManager enableNetworkDiscoveryBy: (
		TlpStaticAddressDiscoveryStrategy ip: NetNameResolver localHostAddress).
		
	1 seconds wait.
	
	self assert: radar detectedPharos size equals: 1
	
