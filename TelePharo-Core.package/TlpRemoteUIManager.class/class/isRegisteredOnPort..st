testing
isRegisteredOnPort: portNumber

	self isRegistered ifFalse: [^false]. 
	
	^self registeredInstance isRegisteredOnPort: portNumber