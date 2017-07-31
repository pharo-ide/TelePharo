tools registration
restoreLocalTools 

	[remoteUIManager restoreLocalTools]
		on: Error do: [ :err | self notify: 'We cant restore remote tools due to: ', err printString]