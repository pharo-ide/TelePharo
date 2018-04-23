gt inspector
gtConnectingStatusFor: aRemotePharo

	| iconName |
	iconName := aRemotePharo isConnected ifTrue: [ #testGreenIcon ] ifFalse: [ #testRedIcon ].
	^Smalltalk ui iconNamed: iconName