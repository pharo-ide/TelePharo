controlling
enableNetworkDiscovery
	
	discoveryServer := SSDPServer v4SiteLocal.
	discoveryServer 
		offerServiceType: 'ssdp:remotePharo'
		atLocation: self networkDiscoveryUrl