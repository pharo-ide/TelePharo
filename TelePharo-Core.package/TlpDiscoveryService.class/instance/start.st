controlling
start

	ssdpServer := SSDPServer v4SiteLocal.
	ssdpServer 
		offerServiceType: 'ssdp:remotePharo'
		atLocation: self publicUrl.
	
	self class registerService: self