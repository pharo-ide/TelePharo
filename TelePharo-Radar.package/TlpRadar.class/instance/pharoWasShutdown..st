event processing
pharoWasShutdown: aSSDPService 
	| address |
	('Pharo shutdown: ', aSSDPService asString) logCr.
	
	address := self lookupAddressOf: aSSDPService ifError: [:err | ^err logCr ].
	
	ide remotePharoAt: address do: [ :pharo | 
		detectedPharos remove: pharo ifAbsent: []]