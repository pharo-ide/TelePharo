remote ui requests
inform: aString

	^GrowlMorph 
		openWithLabel: 'Information from ', self addressString 
		contents: aString