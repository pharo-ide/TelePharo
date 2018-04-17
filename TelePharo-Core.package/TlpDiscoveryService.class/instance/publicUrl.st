controlling
publicUrl
	| currentIP ipString |
	currentIP := strategy lookupPublicIP.
	ipString := NetNameResolver stringFromAddress: currentIP.
	
	^'telepharo://', ipString, ':', publicServer port asString