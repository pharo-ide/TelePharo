tests
testDetectingPharoShutdown
	self testDetectingRemotePharo.
	
	remoteUIManager stopServer.
	1 seconds wait.
	
	self assert: radar detectedPharos size equals: 0
	
