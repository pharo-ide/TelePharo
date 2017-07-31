remote ui requests
confirm: queryString

	^UIManager default 
		confirm: queryString 
		label: 'Remote question from ', self addressString