gt inspector
gtConnectingButtonFor: aRemotePharo

	| iconName |
	iconName := aRemotePharo isConnected ifTrue: [ #testGreenIcon ] ifFalse: [ #testRedIcon ].
	^Smalltalk ui iconNamed: iconName