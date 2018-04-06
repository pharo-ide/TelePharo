controlling
publicUrl
	| currentIP |
	currentIP := strategy lookupPublicIP.
	
	^'telepharo://', currentIP printString, ':', publicServer port asString