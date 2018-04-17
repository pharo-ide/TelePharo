tests
testDetectingRemotePharo
	radar start.
	remoteUIManager enableNetworkDiscoveryBy: (
		TlpStaticAddressDiscoveryStrategy ip: (#[127 0 0 1] as: SocketAddress)).
		
	[radar detectedPharos isEmpty] whileTrue: [100 milliSeconds wait].
	
	self assert: radar detectedPharos size equals: 1
	
