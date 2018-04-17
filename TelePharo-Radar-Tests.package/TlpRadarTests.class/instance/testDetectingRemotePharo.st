tests
testDetectingRemotePharo
	radar start.
	remoteUIManager enableNetworkDiscoveryBy: (
		TlpStaticAddressDiscoveryStrategy ip: NetNameResolver localHostAddress).
		
	[radar detectedPharos isEmpty] whileTrue: [100 milliSeconds wait].
	
	self assert: radar detectedPharos size equals: 1
	
