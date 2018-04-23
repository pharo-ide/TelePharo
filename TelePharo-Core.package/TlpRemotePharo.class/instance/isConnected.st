testing
isConnected
	^registeredServices notNil and: [ remotePeer isConnected ]