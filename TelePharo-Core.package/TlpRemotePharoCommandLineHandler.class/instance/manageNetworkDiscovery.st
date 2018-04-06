activation
manageNetworkDiscovery
	| ipString ip |
	(self hasOption: 'disableDiscovery') ifTrue: [
		^TlpRemoteUIManager disableNetworkDiscovery ].
	
	(self hasOption: 'discoveryByHostName') ifTrue: [ 
		^TlpRemoteUIManager enableNetworkDiscoveryBy: TlpHostNameDiscoveryStrategy new].

	(self hasOption: 'discoveryByStaticIP') ifTrue: [ 
		ipString := self optionAt: 'discoveryByStaticIP'.
		ip := NetNameResolver addressForName: ipString.
		TlpRemoteUIManager enableNetworkDiscoveryBy: (TlpStaticAddressDiscoveryStrategy ip: ip)]