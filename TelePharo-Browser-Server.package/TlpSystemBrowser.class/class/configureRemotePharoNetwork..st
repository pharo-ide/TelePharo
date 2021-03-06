network configuration
configureRemotePharoNetwork: aSeamlessNetwork

	| calypsoPackages |
	calypsoPackages := (RPackageOrganizer default packages select: [ :each | each name beginsWith: 'Calypso-' ]) asIdentitySet.
	
	aSeamlessNetwork
		transferByDefaultStrategy: (Kind of: Class) & (Satisfying for: [:c | 
			calypsoPackages includes: c package])
		priority: 100