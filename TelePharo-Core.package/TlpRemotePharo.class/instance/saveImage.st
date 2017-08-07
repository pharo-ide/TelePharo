requests
saveImage

	remotePeer evaluateAsync: [ 
		[Smalltalk saveSession.
		'image is saved' logCr] forkAt: Processor activePriority + 1 
	]