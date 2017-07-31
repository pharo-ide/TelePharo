network configuration
configureRemotePharoNetwork: aSeamlessNetwork

	| calypsoPackages |
	calypsoPackages := ClyEnvironmentPlugin withAllSubclasses collect: #package as: IdentitySet.
	
	aSeamlessNetwork
		transferByDefaultStrategy: (Kind of: Class) & (Satisfying for: [:c | 
			calypsoPackages includes: c package])
		priority: 100