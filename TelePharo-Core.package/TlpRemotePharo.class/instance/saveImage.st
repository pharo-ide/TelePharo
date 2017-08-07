requests
saveImage

	remotePeer evaluateAsync: [ 
		[ | isImageStartup |
			isImageStartup := Smalltalk saveSession.
			isImageStartup ifFalse: [ 'image is saved' logCr]
		] forkAt: Processor activePriority + 1 
	]