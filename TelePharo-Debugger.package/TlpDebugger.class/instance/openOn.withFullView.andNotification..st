debug
openOn: aDebugSession withFullView: aBool andNotification: aString
	
	UIManager default defer: [ 
		Smalltalk tools debugger openOn: aDebugSession withFullView: aBool andNotification: aString].
	