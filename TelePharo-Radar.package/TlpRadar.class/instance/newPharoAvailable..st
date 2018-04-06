event processing
newPharoAvailable: aSSDPService 
	| newPharo address |
	('New Pharo detected: ', aSSDPService asString) logCr.
	
	address := self lookupAddressOf: aSSDPService ifError: [:err | ^err logCr ].
	newPharo := ide registerPharoAt: address.
	detectedPharos add: newPharo