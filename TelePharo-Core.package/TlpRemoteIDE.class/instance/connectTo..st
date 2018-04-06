connecting
connectTo: aTCPAddress 
	
	| remotePharo |
	remotePharo := self registerPharoAt: aTCPAddress ifExist: [ :existing |
		existing isConnected ifTrue: [ ^existing ].
		connectedPharos removeKey: aTCPAddress.
		self registerPharoAt: aTCPAddress ifExist: [ :existing2 | 
			self error: [ self error: 'Should not happen!' ] ]].
	
	remotePharo connect.
	^remotePharo