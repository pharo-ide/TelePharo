event processing
lookupAddressOf: aSSDPService ifError: aBlock 
	| location ipAddress |
	
	^[location := aSSDPService location asUrl.
	
	ipAddress := NetNameResolver addressForName: location host.
	
	TCPAddress ip: ipAddress port: location port]
		on: NameLookupFailure do: aBlock