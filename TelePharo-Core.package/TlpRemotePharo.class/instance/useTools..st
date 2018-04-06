tools registration
useTools: toolsDictionary
	
	tools := toolsDictionary collect: [ :toolClass | toolClass for: self  ]