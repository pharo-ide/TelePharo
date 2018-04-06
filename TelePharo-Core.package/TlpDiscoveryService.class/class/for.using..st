instance creation
for: aTCPServer using: aDiscoveryStrategy

	^self new 
		publicServer: aTCPServer;
		strategy: aDiscoveryStrategy  