tests
testDetectingPharoShutdown
	self testDetectingRemotePharo.
	
	remoteUIManager stopServer.
	[radar detectedPharos notEmpty] whileTrue: [100 milliSeconds wait].
	
	self assert: radar detectedPharos size equals: 0
	
