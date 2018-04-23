controlling
start
	self stop.
	
	ssdpClient := SSDPClient v4SiteLocal.
	ssdpClient 
		filter: 'ssdp:remotePharo' 
		whenAvailable: [ :resource | 
			self newPharoAvailable: resource]
		whenUnavailable: [ :resource | 
			self pharoWasShutdown: resource].
