requests
saveImage

	remotePeer evaluateAsync: [ 
		[ | isImageStartup |
			isImageStartup := Smalltalk saveSession.
			isImageStartup ifFalse: [ 'image is saved' logCr]
		] forkAt: Processor activePriority + 1 
	].
	remotePeer closeConnections.
	1 seconds wait. "we allow remote side proceed sent request which should close all connections"
	remotePeer waitConnection