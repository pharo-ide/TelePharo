controlling
start
	| location |
	ssdpServer ifNotNil: [ self stop ].
	
	location := self publicUrl.
	ssdpServer := SSDPServer v4SiteLocal.
	ssdpServer 
		offerServiceType: 'ssdp:remotePharo'
		atLocation: location.
	
	self class registerService: self.
	('discovery service started: ', location asString) logCr