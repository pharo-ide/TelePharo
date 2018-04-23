gt inspector
gtDebuggerStatusFor: aRemotePharo

	| iconName |
	iconName := aRemotePharo isIDEConnected ifTrue: [ #testGreenIcon ] ifFalse: [ #testRedIcon ].
	^Smalltalk ui iconNamed: iconName