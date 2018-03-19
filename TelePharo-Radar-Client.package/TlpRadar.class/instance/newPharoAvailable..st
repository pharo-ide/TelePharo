event processing
newPharoAvailable: aSSDPService 
	| location ipAddress newPharo |
	('New Pharo detected: ', aSSDPService asString) logCr.
	location := aSSDPService location asUrl.
	[ipAddress := NetNameResolver addressForName: location host.
	newPharo := ide registerPharoAt: (TCPAddress ip: ipAddress port: location port).
	detectedPharos add: newPharo] 
		on: NameLookupFailure do: [ :err | err logCr ]