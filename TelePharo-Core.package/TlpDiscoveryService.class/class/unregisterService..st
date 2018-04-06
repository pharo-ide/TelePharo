registry
unregisterService: aDiscoveryService
	^self runningServices remove: aDiscoveryService ifAbsent: [  ] 