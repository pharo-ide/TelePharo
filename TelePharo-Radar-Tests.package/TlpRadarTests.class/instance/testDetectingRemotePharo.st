tests
testDetectingRemotePharo

	radar start.
	remoteUIManager enableNetworkDiscoveryBy: (
		TlpStaticAddressDiscoveryStrategy ip: NetNameResolver localHostAddress).
	1 seconds wait.
	
	self assert: radar detectedPharos size equals: 1
	
