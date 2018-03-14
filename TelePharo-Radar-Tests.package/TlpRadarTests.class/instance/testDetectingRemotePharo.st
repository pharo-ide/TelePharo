tests
testDetectingRemotePharo

	radar start.
	remoteUIManager enableNetworkDiscovery.
	1 seconds wait.
	
	self assert: radar detectedPharos size equals: 1
	
