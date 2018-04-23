tools registration
restoreLocalTools 
	remoteUIManager ifNil: [^self].
	
	[remoteUIManager restoreLocalTools]
		on: Error do: [ :err | self notify: 'We cant restore remote tools due to: ', err printString].
	
	remoteUIManager := nil