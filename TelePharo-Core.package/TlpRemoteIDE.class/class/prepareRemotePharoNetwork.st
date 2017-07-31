network configuration
prepareRemotePharoNetwork

	| network |
	network := SeamlessNetwork new.

	TlpTool allSubclassesDo: [ :each | 
		each configureRemotePharoNetwork: network].
	
	^network