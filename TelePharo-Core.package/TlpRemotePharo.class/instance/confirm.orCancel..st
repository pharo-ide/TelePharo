remote ui requests
confirm: aString orCancel: cancelBlock
	^UIManager default 
		confirm: aString
		orCancel: cancelBlock